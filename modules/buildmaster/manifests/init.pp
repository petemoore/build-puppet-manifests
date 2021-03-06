# buildmaster class
# include this in your node to have all the base requirements for running a
# buildbot master installed
# To setup a particular instance of a buildbot master, see
# buildmaster::buildbot_master
#
# buildmaster requires that $num_masters be set on the node prior to including this class
#
# TODO: move $libdir stuff into template?
# TODO: you still have to set up ssh keys!
# TODO: determine num_masters from json (bug 647374)
class buildmaster {
    include releng::master
    include secrets
    include buildmaster::queue
    include buildmaster::settings
    # Configure the kernel to send keepalive packets every 120s on idle tcp
    # connections, and fail after a total of 180s of no response.  This is
    # pretty conservative, but allows us to fail fast when a TCP connection
    # silently goes away.  This is more common than you might think: it is
    # often caused by session state loss on firewalls, or by a host failure at
    # the other end of the connection.
    sysctl {
        # wait 120 seconds since last data packet (or good probe response) is
        # received before sending the first probe
        'net.ipv4.tcp_keepalive_time':
            value => 120;
        # when a keepalive probe fails (times out), send another after 5
        # seconds
        'net.ipv4.tcp_keepalive_intvl':
            value => 5;
        # kill the TCP connection after 12 probes with no response
        'net.ipv4.tcp_keepalive_probes':
            value => 12;
    }

    $master_user = $buildmaster::settings::master_user
    $master_group = $buildmaster::settings::master_group
    $master_user_uid = $buildmaster::settings::master_user_uid
    $master_group_gid = $buildmaster::settings::master_group_gid
    $master_basedir = $buildmaster::settings::master_basedir
    if $num_masters == '' {
        fail("you must set num_masters")
    }
    package {
        "python26":
            ensure => latest;
        "python26-virtualenv":
            ensure => latest;
        "mysql-devel":
            ensure => latest;
        "git":
            ensure => latest;
        "gcc":
            ensure => latest;
    }
    service {
        "buildbot":
            require => File["/etc/init.d/buildbot"],
            enable => true;
    }
    user {
        $master_user:
            require => Group[$master_group],
            ensure => "present",
            name => $master_user,
            uid => $master_user_uid,
            gid => $master_group_gid,
            comment => "Client Builder",
            managehome => true,
            home => "/home/$master_user",
            shell => "/bin/bash",
            password => $secrets::cltbld_password;
    }
    group {
        $master_group:
            ensure => "present",
            name => $master_group,
            gid => $master_group_gid;
    }
    $plugins_dir = $nagios::service::plugins_dir
    $nagios_etcdir = $nagios::service::etcdir
    file {
        "/home/$master_user/.ssh":
            mode => 700,
            owner => $master_user,
            group => $master_group,
            ensure => directory;
        "/home/$master_user/.ssh/config":
            mode => 600,
            owner => $master_user,
            group => $master_group,
            source => "puppet:///${level}//home/cltbld/.ssh/config";
        "/home/$master_user/.ssh/known_hosts":
            mode => 644,
            owner => $master_user,
            group => $master_group,
            source => "puppet:///${level}//home/cltbld/.ssh/known_hosts";
        "/home/$master_user/.ssh/authorized_keys":
            owner => $master_user,
            group => $master_group,
            mode => 644,
            source => "puppet:///${level}//home/cltbld/.ssh/authorized_keys";
        "/builds":
            ensure => directory,
            owner => $master_user,
            group => $master_group;
        $master_basedir:
            ensure => directory,
            owner => $master_user,
            group => $master_group;
        "/etc/default/buildbot.d/":
            owner => "root",
            group => "root",
            mode => 755,
            ensure => directory;
        "/etc/init.d/buildbot":
            source => "puppet:///modules/buildmaster/buildbot.initd",
            mode => 755,
            owner => "root",
            group => "root";
        "/root/.my.cnf":
            content => template("buildmaster/my.cnf.erb"),
            mode => 600,
            owner => "root",
            group => "root";
        "${nagios_etcdir}/nrpe.d/buildbot.cfg":
            content => template("buildmaster/buildbot.cfg.erb"),
            notify => Service["nrpe"],
            require => Class["nagios"],
            mode => 644,
            owner => "root",
            group => "root";
        "/tools":
            ensure => "directory";
    }
    exec {
        "clone-configs":
            creates => "$master_basedir/buildbot-configs",
            command => "/usr/bin/hg clone -r production http://hg.mozilla.org/build/buildbot-configs",
            user => $master_user,
            cwd => $master_basedir;
    }
}

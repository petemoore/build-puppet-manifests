# master class
# for use as a base class for master-like machines
# (e.g. buildbot masters, puppet masters)
class master {
    $platform_httproot = "${httproot}/${lsbdistid}-${lsbdistrelease}-${hardwaremodel}/${slaveType}"
    include network
    include ntp
    include prefs
    include ganglia::client
    packages::hg {
        "latest":
    }
    package {
        "epel-release":
            source => "http://download.fedora.redhat.com/pub/epel/5/i386/epel-release-5-4.noarch.rpm",
            provider => "rpm";
        # So that puppet help works
        "ruby-rdoc":
            ensure => "1.8.5-5.el5_4.8";
    }
}
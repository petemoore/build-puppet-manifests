$location = "mpt"
$level = "production"

$puppetServer = "${level}-puppet.build.mozilla.org"

import "secrets.pp"
import "base/*"
import "includes/*"
import "os/*"
import "classes/*"
import "build/*"
import "stage/*"

# module imports
import "buildslave"
import "gui"

### Node definitions

node "linux-ref-platform" inherits "centos5-i686-build" {
    include buildslave, vm
}

node "linux64-ref-platform" inherits "centos5-x86_64-build" {
    include buildslave, vm
}

node "linux-hgwriter-slave01" inherits "centos5-i686-build" {
    include buildslave, vm
}

node "linux-hgwriter-slave02" inherits "centos5-i686-build" {
    include buildslave, vm
}

node "linux-ix-slave06" inherits "scl-build-node" {
}

node "linux-ix-slave07" inherits "scl-build-node" {
}

node "linux-ix-slave08" inherits "scl-build-node" {
}

node "linux-ix-slave09" inherits "scl-build-node" {
}

node "linux-ix-slave10" inherits "scl-build-node" {
}

node "linux-ix-slave11" inherits "scl-build-node" {
}

node "linux-ix-slave12" inherits "scl-build-node" {
}

node "linux-ix-slave13" inherits "scl-build-node" {
}

node "linux-ix-slave14" inherits "scl-build-node" {
}

node "linux-ix-slave15" inherits "scl-build-node" {
}

node "linux-ix-slave16" inherits "scl-build-node" {
}

node "linux-ix-slave17" inherits "scl-build-node" {
}

node "linux-ix-slave18" inherits "scl-build-node" {
}

node "linux-ix-slave19" inherits "scl-build-node" {
}

node "linux-ix-slave20" inherits "scl-build-node" {
}

node "linux-ix-slave21" inherits "scl-build-node" {
}

node "linux-ix-slave22" inherits "scl-build-node" {
}

node "linux-ix-slave23" inherits "scl-build-node" {
}

node "linux-ix-slave24" inherits "scl-build-node" {
}

node "linux-ix-slave25" inherits "scl-build-node" {
}

node "linux-ix-slave26" inherits "scl-build-node" {
}

node "linux-ix-slave27" inherits "scl-build-node" {
}

node "linux-ix-slave28" inherits "scl-build-node" {
}

node "linux-ix-slave29" inherits "scl-build-node" {
}

node "linux-ix-slave30" inherits "scl-build-node" {
}

node "linux-ix-slave31" inherits "scl-build-node" {
}

node "linux-ix-slave32" inherits "scl-build-node" {
}

node "linux-ix-slave33" inherits "scl-build-node" {
}

node "linux-ix-slave34" inherits "scl-build-node" {
}

node "linux-ix-slave35" inherits "scl-build-node" {
}

node "linux-ix-slave36" inherits "scl-build-node" {
}

node "linux-ix-slave37" inherits "scl-build-node" {
}

node "linux-ix-slave38" inherits "scl-build-node" {
}

node "linux-ix-slave39" inherits "scl-build-node" {
}

node "linux-ix-slave40" inherits "scl-build-node" {
}

node "linux-ix-slave41" inherits "scl-build-node" {
}

node "linux-ix-slave42" inherits "scl-build-node" {
}

node "talos-r3-fed-ref" inherits "scl-test-node" {
}

node "talos-r3-fed-003" inherits "scl-test-node" {
}

node "talos-r3-fed-004" inherits "scl-test-node" {
}

node "talos-r3-fed-005" inherits "scl-test-node" {
}

node "talos-r3-fed-006" inherits "scl-test-node" {
}

node "talos-r3-fed-007" inherits "scl-test-node" {
}

node "talos-r3-fed-008" inherits "scl-test-node" {
}

node "talos-r3-fed-009" inherits "scl-test-node" {
}

node "talos-r3-fed-010" inherits "staging-test-node" {
}

node "talos-r3-fed-011" inherits "scl-test-node" {
}

node "talos-r3-fed-012" inherits "scl-test-node" {
}

node "talos-r3-fed-013" inherits "scl-test-node" {
}

node "talos-r3-fed-014" inherits "scl-test-node" {
}

node "talos-r3-fed-015" inherits "scl-test-node" {
}

node "talos-r3-fed-016" inherits "scl-test-node" {
}

node "talos-r3-fed-017" inherits "scl-test-node" {
}

node "talos-r3-fed-018" inherits "scl-test-node" {
}

node "talos-r3-fed-019" inherits "scl-test-node" {
}

node "talos-r3-fed-020" inherits "scl-test-node" {
}

node "talos-r3-fed-021" inherits "scl-test-node" {
}

node "talos-r3-fed-022" inherits "scl-test-node" {
}

node "talos-r3-fed-023" inherits "scl-test-node" {
}

node "talos-r3-fed-024" inherits "scl-test-node" {
}

node "talos-r3-fed-025" inherits "scl-test-node" {
}

node "talos-r3-fed-026" inherits "scl-test-node" {
}

node "talos-r3-fed-027" inherits "scl-test-node" {
}

node "talos-r3-fed-028" inherits "scl-test-node" {
}

node "talos-r3-fed-029" inherits "scl-test-node" {
}

node "talos-r3-fed-030" inherits "scl-test-node" {
}

node "talos-r3-fed-031" inherits "scl-test-node" {
}

node "talos-r3-fed-032" inherits "scl-test-node" {
}

node "talos-r3-fed-033" inherits "scl-test-node" {
}

node "talos-r3-fed-034" inherits "scl-test-node" {
}

node "talos-r3-fed-035" inherits "scl-test-node" {
}

node "talos-r3-fed-036" inherits "scl-test-node" {
}

node "talos-r3-fed-037" inherits "scl-test-node" {
}

node "talos-r3-fed-038" inherits "scl-test-node" {
}

node "talos-r3-fed-039" inherits "scl-test-node" {
}

node "talos-r3-fed-040" inherits "scl-test-node" {
}

node "talos-r3-fed-041" inherits "scl-test-node" {
}

node "talos-r3-fed-042" inherits "scl-test-node" {
}

node "talos-r3-fed-043" inherits "scl-test-node" {
}

node "talos-r3-fed-044" inherits "scl-test-node" {
}

node "talos-r3-fed-045" inherits "scl-test-node" {
}

node "talos-r3-fed-046" inherits "scl-test-node" {
}

node "talos-r3-fed-047" inherits "scl-test-node" {
}

node "talos-r3-fed-048" inherits "scl-test-node" {
}

node "talos-r3-fed-049" inherits "scl-test-node" {
}

node "talos-r3-fed-050" inherits "scl-test-node" {
}

node "talos-r3-fed-051" inherits "scl-test-node" {
}

node "talos-r3-fed-052" inherits "scl-test-node" {
}

node "talos-r3-fed-053" inherits "scl-test-node" {
}

node "talos-r3-fed64-ref" inherits "scl-test-node" {
}

node "talos-r3-fed64-003" inherits "scl-test-node" {
}

node "talos-r3-fed64-004" inherits "scl-test-node" {
}

node "talos-r3-fed64-005" inherits "scl-test-node" {
}

node "talos-r3-fed64-006" inherits "scl-test-node" {
}

node "talos-r3-fed64-007" inherits "scl-test-node" {
}

node "talos-r3-fed64-008" inherits "scl-test-node" {
}

node "talos-r3-fed64-009" inherits "scl-test-node" {
}

node "talos-r3-fed64-010" inherits "staging-test-node" {
}

node "talos-r3-fed64-011" inherits "scl-test-node" {
}

node "talos-r3-fed64-012" inherits "scl-test-node" {
}

node "talos-r3-fed64-013" inherits "scl-test-node" {
}

node "talos-r3-fed64-014" inherits "scl-test-node" {
}

node "talos-r3-fed64-015" inherits "scl-test-node" {
}

node "talos-r3-fed64-016" inherits "scl-test-node" {
}

node "talos-r3-fed64-017" inherits "scl-test-node" {
}

node "talos-r3-fed64-018" inherits "scl-test-node" {
}

node "talos-r3-fed64-019" inherits "scl-test-node" {
}

node "talos-r3-fed64-020" inherits "scl-test-node" {
}

node "talos-r3-fed64-021" inherits "scl-test-node" {
}

node "talos-r3-fed64-022" inherits "scl-test-node" {
}

node "talos-r3-fed64-023" inherits "scl-test-node" {
}

node "talos-r3-fed64-024" inherits "scl-test-node" {
}

node "talos-r3-fed64-025" inherits "scl-test-node" {
}

node "talos-r3-fed64-026" inherits "scl-test-node" {
}

node "talos-r3-fed64-027" inherits "scl-test-node" {
}

node "talos-r3-fed64-028" inherits "scl-test-node" {
}

node "talos-r3-fed64-029" inherits "scl-test-node" {
}

node "talos-r3-fed64-030" inherits "scl-test-node" {
}

node "talos-r3-fed64-031" inherits "scl-test-node" {
}

node "talos-r3-fed64-032" inherits "scl-test-node" {
}

node "talos-r3-fed64-033" inherits "scl-test-node" {
}

node "talos-r3-fed64-034" inherits "scl-test-node" {
}

node "talos-r3-fed64-035" inherits "scl-test-node" {
}

node "talos-r3-fed64-036" inherits "scl-test-node" {
}

node "talos-r3-fed64-037" inherits "scl-test-node" {
}

node "talos-r3-fed64-038" inherits "scl-test-node" {
}

node "talos-r3-fed64-039" inherits "scl-test-node" {
}

node "talos-r3-fed64-040" inherits "scl-test-node" {
}

node "talos-r3-fed64-041" inherits "scl-test-node" {
}

node "talos-r3-fed64-043" inherits "scl-test-node" {
}

node "talos-r3-fed64-044" inherits "scl-test-node" {
}

node "talos-r3-fed64-045" inherits "scl-test-node" {
}

node "talos-r3-fed64-046" inherits "scl-test-node" {
}

node "talos-r3-fed64-047" inherits "scl-test-node" {
}

node "talos-r3-fed64-048" inherits "scl-test-node" {
}

node "talos-r3-fed64-049" inherits "scl-test-node" {
}

node "talos-r3-fed64-050" inherits "scl-test-node" {
}

node "talos-r3-fed64-051" inherits "scl-test-node" {
}

node "talos-r3-fed64-052" inherits "scl-test-node" {
}

node "talos-r3-fed64-053" inherits "scl-test-node" {
}

node "talos-r3-fed64-054" inherits "scl-test-node" {
}

node "talos-r3-fed64-055" inherits "scl-test-node" {
}

node "byob-repack01" inherits "mv-build-node" {
}

node "byob-repack02" inherits "mv-build-node" {
}

node "byob-repack03" inherits "mv-build-node" {
}

node "byob-repack04" inherits "mv-build-node" {
}

node "byob-repack05" inherits "mv-build-node" {
}

node "mv-moz2-linux-ix-slave01" inherits "staging-build-node" {
}

node "linux-ix-slave01" inherits "staging-build-node" {
}

node "linux-ix-slave02" inherits "staging-build-node" {
}

node "linux-ix-slave03" inherits "staging-build-node" {
}

node "linux-ix-slave04" inherits "staging-build-node" {
}

node "linux-ix-slave05" inherits "staging-build-node" {
}

node "talos-r3-fed-001" inherits "staging-test-node" {
}

node "talos-r3-fed-002" inherits "staging-test-node" {
}

node "talos-r3-fed64-001" inherits "staging-test-node" {
}

node "talos-r3-fed64-002" inherits "staging-test-node" {
}

node "talos-r4-snow-004" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-005" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-006" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-007" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-008" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-009" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-010" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-011" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-012" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-013" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-014" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-015" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-016" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-017" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-018" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-019" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-020" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-021" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-022" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-023" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-024" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-025" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-026" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-027" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-028" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-029" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-030" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-031" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-032" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-033" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-034" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-035" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-036" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-037" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-038" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-039" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-040" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-041" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-042" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-043" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-044" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-045" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-046" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-047" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-048" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-049" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-050" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-051" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-052" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-053" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-054" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-055" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-056" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-057" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-058" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-059" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-060" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-061" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-062" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-063" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-064" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-065" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-066" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-067" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-068" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-069" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-070" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-071" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-072" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-073" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-074" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-075" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-076" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-077" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-078" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-079" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

node "talos-r4-snow-080" inherits "darwin10-i386-test" {
    include talos_osx_rev4
}

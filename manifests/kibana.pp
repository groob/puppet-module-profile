# Profile to configure elasticsearch on a node.
#
class profile::kibana {
  class {'::kibana': }
  class {'::apache': }
}


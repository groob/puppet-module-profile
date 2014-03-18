# Profile to configure elasticsearch on a node.
#
class profile::kibana {
  class {'::kibana':
    kibana_vhost => 'kibana.whitbylab.org',
  }
  class {'::apache': }
}


# Profile to configure elasticsearch on a node.
#
class profile::elasticsearch {

  class { '::elasticsearch':
  }
}

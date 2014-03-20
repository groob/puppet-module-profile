# Profile to configure elasticsearch on a node.
#
class profile::elasticsearch {

  class { '::elasticsearch':
    manage_repo  => true,
    repo_version => '1.0',
    config       => {
      'cluster'      => {
      'name'         => 'logstashCluster',
      }
    }
  }
}

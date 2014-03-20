#
# logstash profile
#
class profile::logstash {
  include ::java
  ensure_packages(['wget'])
  class { '::logstash':
    package_url        => 'http://download.elasticsearch.org/logstash/logstash/packages/centos/logstash-1.3.3-1_centos.noarch.rpm',
    init_defaults_file => 'puppet:///modules/profile/logstash/init_defaults_file',
  }
  logstash::configfile {'indexer':
    content => template('profile/logstash/indexer.conf.erb'),
  }
  logstash::patternfile { 'extra_pattern':
    source => 'puppet:///modules/profile/logstash/extra_pattern'
  }
}


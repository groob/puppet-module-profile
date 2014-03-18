#
# logstash profile
#
class profile::logstash {
  include ::java
  class { '::logstash':
    package_url =>  'http://download.elasticsearch.org/logstash/logstash/packages/centos/logstash-1.3.3-1_centos.noarch.rpm'
  }
  logstash::configfile {'indexer':
    content => template('profile/logstash/indexer.erb'),
  }
  logstash::patternfile { 'extra_pattern':
    source => 'puppet:///modules/profile/logstash/extra_pattern'
  }
}


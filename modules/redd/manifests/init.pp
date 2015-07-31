class redd {
  include base

  package { 'redis-server':
    ensure => present
  }

  service { 'redis-server':
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart => true,
    require     => Package['redis-server']
  }

  file { '/etc/redis/redis.conf':
    owner   => root,
    mode    => 0644,
    content => template("redd/redis.conf"),
    require => Package['redis-server'],
    notify  => Service['redis-server']
  }
}

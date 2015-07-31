class python {
  include base

  package { 'python-pip':
    ensure => 'present'
  }

  package { 'git-core':
    ensure => 'present'
  }

  exec { 'install pika':
    command => 'pip install pika==0.9.8',
    require => Package['python-pip']
  }

  exec { 'install celery':
    command => 'pip install celery',
    require => Package['python-pip']
  }

  exec { 'install redis-lib':
    command => 'pip install -U redis',
    require => Package['python-pip']
  }
}

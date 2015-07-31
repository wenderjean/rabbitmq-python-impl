class rabbitmq {
  include base

  package { 'rabbitmq-server':
    ensure => 'present'
  }
}

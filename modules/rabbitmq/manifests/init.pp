class rabbitmq {

  package { 'rabbitmq-server':
    ensure => 'present'
  }
}

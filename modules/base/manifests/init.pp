class base {

  exec { 'apt-get update':
    command => 'apt-get update'
  }

  Exec['apt-get update'] -> Package <| |>
}


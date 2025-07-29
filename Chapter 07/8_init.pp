class apache {
  include apache::install
  include apache::config
  include apache::service
}

class apache::install {
  package { 'apache2':
    ensure => installed,
  }
}

class apache::config {
  file { '/etc/apache2/sites-enabled/000-default.conf':
    ensure  => file,
    content => template('apache/vhost.conf.erb'),
  }
}

class apache::service {
  service { 'apache2':
    ensure => running,
    enable => true,
  }
}

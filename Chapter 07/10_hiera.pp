class apache ($docroot, $port, $servername) {
  file { $docroot:
    ensure => directory,
  }

  file { "$docroot/index.html":
    ensure  => file,
    content => '<h1>Welcome to Apache Server!</h1>',
  }

  file { '/etc/apache2/sites-enabled/000-default.conf':
    ensure  => file,
    content => template('apache/vhost.conf.erb'),
  }

  service { 'apache2':
    ensure => running,
    enable => true,
  }
}

# Basic manifest example (webserver.pp)
package { 'nginx':
  ensure => 'installed',
}

service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx'],
}

file { '/etc/nginx/nginx.conf':
  ensure  => 'present',
  source  => 'puppet:///modules/nginx/nginx.conf',
  notify  => Service['nginx'],
  require => Package['nginx'],
}

# Puppet script to increase Nginx 

$nginx_ulimit = 'ULIMIT="-n 65535"'

package { 'nginx':
  ensure => installed
}

file { '/etc/default/nginx':
  ensure  => present,
  content => $nginx_ulimit,
  notify  => Service['nginx']
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
}

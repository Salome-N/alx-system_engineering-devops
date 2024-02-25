# Puppet to make changes to our configuration file

file_line { 'Declare Identity File':
  ensure => 'present',
  line   => '    IdentityFile ~/.ssh/school',
  path   => '/etc/ssh/ssh_config',
}

file_line { 'Turn off passwd auth':
  ensure => 'present',
  line   => '    PasswordAuthentication no',
  path   => '/etc/ssh/ssh_config',
}

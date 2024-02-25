# Puppet to make changes to our configuration file

file_line { 'Declare Identity File':
  ensure => 'present',
  line   => '    IdentityFile ~/.ssh/school',
  path   => '/etc/ssh/ssh_config',
}

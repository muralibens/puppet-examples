file{'/var/tmp/testfile':
  ensure => 'file',
  owner	 => 'root',
  group	 => 'root',
  mode	 => '664',
  content => 'Puppet is Awesome'
}

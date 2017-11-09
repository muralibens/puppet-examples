class apache {
  package {'apache2':
    ensure => 'latest',
  }
  file {'/etc/httpd.conf':
    ensure  => file,
    content => "# Sample Apache Config for Example 2"
  }
  service {'apache2':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/httpd.conf'],
  }
}

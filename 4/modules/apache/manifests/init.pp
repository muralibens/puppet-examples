class apache {
  package {'apache2':
    ensure => 'latest',
  }
  notice("Running Docker Containers: ${::running_containers}")
  notice("Stopped Docker Containers: ${::stopped_containers}")
  file {'/etc/httpd.conf':
    ensure  => file,
    content =>
"# Sample Apache Config for Example 3
# OS Family: ${facts['os']['family']}
# OS Name: ${os['name']}
# OS Release: ${::os['release']['full']}

"
  }
  service {'apache2':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/httpd.conf'],
  }
}

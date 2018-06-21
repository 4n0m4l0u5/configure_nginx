# A description of what this class does
#
# configures the puppet-nginx module with basic configuration and sets up a static site with content.
#
# @example
#   include configure_nginx

class configure_nginx {

    package { 'curl':
      ensure => installed,
    }

    exec { 'curl-site':
      command => 'curl localhost',
      require => Package['curl'],
    }
    class { 'nginx':
    manage_repo    => true,
    package_source => 'nginx-stable',
    }

    include nginx

    nginx::resource::server { 'mini-proj-simple-site':
      ensure               => present,
      www_root             => '/var/www/mini-proj-simple-site',
      use_default_location => false,
    }

    file { '/var/www/':
      ensure => directory,
      mode   => '0644',
      owner  => www-data,
      group  => www-data,
    }

    file { '/var/www/mini-proj-simple-site':
      ensure => directory,
      mode   => '0644',
      owner  => www-data,
      group  => www-data,
    }

    file { '/var/www/mini-proj-simple-site/index.html':
      ensure  => file,
      mode    => '0644',
      owner   => www-data,
      group   => www-data,
      content => 'Automation for the People',
    }
    exec { 'curl-site': }
#    file { '/etc/nginx/conf.d/default.conf':
#      ensure => absent,
#    }

}

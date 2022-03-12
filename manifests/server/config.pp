# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::server::config
class frp::server::config {
  $configs     = $frp::server::configs
  $config_path = $frp::params::server_config_path
  if ! defined(File['/etc/frp']) {
    file {'/etc/frp':
      ensure => directory,
    }
  }
  file { $config_path :
    content => template('frp/frps.ini.erb'),
    require => File['/etc/frp'],
    notify  => Service['frps']
  }
}

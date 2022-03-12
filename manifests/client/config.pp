# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::client::config
class frp::client::config {
  $server_config = $frp::server::server_config
  $configs       = $frp::server::configs
  $config_path   = $frp::params::server_config_path
  if ! defined(File['/etc/frp']) {
    file {'/etc/frp':
      ensure => directory,
    }
  }
  file { $config_path :
    content => template('frp/frpc.ini.erb'),
    require => File['/etc/frp'],
    notify  => Service['frpc']
  }
}

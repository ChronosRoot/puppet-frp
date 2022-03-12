# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::server::config
class frp::server::config {
  if ! defined(File['/etc/frp']) {
    file {'/etc/frp':
      ensure => directory,
    }
  }
  file { $frp::params::server_config_path :
    content => template('frp/frps.ini.erb')
  }
}

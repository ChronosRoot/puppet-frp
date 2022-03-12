# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::server::service
class frp::server::service {
  $description = 'Frp Server Service'
  $path        = $frp::server::path
  $config_path = $frp::params::server_config_path
  file {'frps_service':
    path    => '/etc/systemd/system/frps.service',
    content => template('frp/frp.service.erb'),
  }

  service { 'Frps':
    ensure    => $frp::server::enable,
    subscribe => File[$config_path]
  }
}

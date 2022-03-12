# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::client::service
class frp::client::service {
  $description = 'Frp Client Service'
  $path        = $frp::client::path
  $config_path = $frp::params::client_config_path
  file {'frp_service':
    path    => '/etc/systemd/system/frpc.service',
    content => template('frp/frp.service.erb'),
  }

  service { 'frpc':
    ensure    => $frp::client::enable,
    subscribe => File[$config_path]
  }
}

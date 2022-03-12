# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::server::service
class frp::server::service {
  $path        = $frp::server::path
  $description = 'Frp Server Service'
  file {'frps_service':
    path    => '/etc/systemd/system/frps.service',
    content => template('frp/frps.service.erb'),
  }

  service { 'Frps':
    ensure    => $frp::server::enable,
    subscribe => File['server-config']
  }
}

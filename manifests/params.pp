# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::params
class frp::params {
  $server_path        = '/usr/bin/frps'
  $server_resource    = 'http://cdn.chronos.icu/frps_amd'
  $server_config_path = '/etc/frp/frps.ini'

  $client_path        = '/usr/bin/frpc'
  $client_resource    = 'http://cdn.chronos.icu/frps_amd'
  $client_config_path = '/etc/frp/frpc.ini'
}

# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::server
class frp::server (
  $path         = $frp::params::server_path,
#  $config_path  = $frp::params::server_config_path,
  $resource     = $frp::params::server_resource,
  $enable       = true,
  $configs      = {}
) inherits frp::params{
    contain frp::server::install
    contain frp::server::config
    contain frp::server::service
    Class['frp::server::install']
    -> Class['frp::server::config']
    -> Class['frp::server::service']
}

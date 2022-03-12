# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::client
class frp::client (
  $path          = $frp::params::client_path,
  $resource      = $frp::params::client_resource,
  $enable        = true,
  $server_config = {},
  $configs       = {}
) inherits frp::params{
    contain frp::client::install
    contain frp::client::config
    contain frp::client::service
    Class['frp::client::install']
    -> Class['frp::client::config']
    -> Class['frp::client::service']
}

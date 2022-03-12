# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::server::install
class frp::server::install {
  file { $frp::server::path:
    source => $frp::server::resource,
    mode   => '0755',
  }
}

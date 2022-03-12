# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include frp::client::install
class frp::client::install {
  file { $frp::client::path:
    source => $frp::client::resource
  }
}

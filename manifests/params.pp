# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::params
class apache::params {
  $install_ensure = 'present'

  case $facts['os']['family'] {
    'RedHat': {
      $install_name = 'httpd'
    }
    'Debian': {
      $install_name = 'apache2'
    }
  }
}

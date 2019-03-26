#Class to add the package name 
#
class drbd::params {
    case $::facts['os']['family'] {
        'Debian': {
            $package_name = 'drbd8-utils'
        }
        'RedHat': {
            $package_name = [ 'drbd90-utils', 'kmod-drbd90' ]
        }
        default: {
          $package_name = 'drbd8-utils'
        }
    }
}

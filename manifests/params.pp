#
# == Class: libreoffice::params
#
# Defines some variables based on the operating system
#
class libreoffice::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'libreoffice'
            $package_provider = undef
        }
        'Debian': {
            $package_name = 'libreoffice'
            $package_provider = undef
        }
        'windows': {
            $package_name = 'libreoffice'
            $package_provider = 'chocolatey'
        }

        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}

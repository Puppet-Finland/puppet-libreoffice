# == Class: libreoffice::install
#
# This class installs libreoffice
#
class libreoffice::install
(
    $ensure

) inherits libreoffice::params
{
    package { $::libreoffice::params::package_name:
        ensure   => $ensure,
        provider => $::libreoffice::params::package_provider,
    }
}

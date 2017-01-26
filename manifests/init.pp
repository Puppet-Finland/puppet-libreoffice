# == Class: libreoffice
#
# This class sets up libreoffice
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage libreoffice using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of libreoffice. Valid values are 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class libreoffice
(
    Boolean                  $manage = true,
    Enum['present','absent'] $ensure = 'present'

) inherits libreoffice::params
{

if $manage {
    class { '::libreoffice::install':
        ensure => $ensure,
    }
}
}

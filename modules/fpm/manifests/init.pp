# == Class: fpm
#
# Installs FPM, a tool for building packages.
#
class fpm(
  $version = params_lookup('version'),
) {
  $real_version = $version ? {
    ''      => installed,
    default => $version,
  }

  package { "fpm":
    ensure   => $real_version,
    provider => gem,
  }
}

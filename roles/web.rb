name 'Web'
description 'Web'

default_attributes(
  nginx: {
    version: '1.11.10',
    default_site_enabled: false,
    source: {
      modules: [
        'nginx::http_gzip_static_module',
        'nginx::http_ssl_module',
        'nginx::http_v2_module'
      ],
      checksum: '778b3cabb07633f754cd9dee32fc8e22582bce22bfa407be76a806abd935533d'
    }
  }
)

run_list 'recipe[nginx::source]'

name 'Database'
description 'Database'

default_attributes(
  postgresql: {
    version: '9.5',
    enable_pgdg_apt: true,
    use_pgdg_packages: true,
    dir: '/etc/postgresql/9.5/main',
    client: {
      packages: ['postgresql-client-9.5', 'libpq-dev']
    },
    server: {
      packages: ['postgresql-9.5']
    },
    contrib: {
      packages: ['postgresql-contrib-9.5']
    },
    password: {
      postgres: '$1$CU63hQbB$r7Ixz58Q4vbgnwgf003fi.'

    },
    users: [
      {
        username: 'deployer',
        password: '$1$ut5HY53S$yMVOzameTGPNrlg1w7dsv.',
        superuser: true,
        createdb: true,
        createrole: false,
        inherit: true,
        replication: false,
        login: true
      }
    ]
  }
)

run_list 'recipe[postgresql::client]',
         'recipe[postgresql::server]',
         'recipe[postgresql::setup_users]'

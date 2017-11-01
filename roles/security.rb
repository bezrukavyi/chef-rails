name 'Security'
description 'Security'

default_attributes(
  firewall: {
    rules: [
      {
        http: {
          port: '80',
          protocol: 'tcp'
        },
        https: {
          port: '443',
          protocol: 'tcp'
        }
      }
    ]
  },
  openssh: {
    server: {
      allow_agent_forwarding: 'yes',
      allow_tcp_forwarding: 'no',
      login_grace_time: '30s',
      password_authentication: 'no',
      permit_root_login: 'no',
      rsa_authentication: 'no'
    }
  }
)

run_list 'recipe[openssh]',
         'recipe[firewall::default]',
         'recipe[ufw]'

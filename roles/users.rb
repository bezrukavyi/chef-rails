name 'Users'
description 'Users'

default_attributes(
  authorization: {
    sudo: {
      groups: [
        'sysadmin'
      ],
      users: [
        'deployer'
      ],
      passwordless: 'false'
    }
  },
  users: [
    'deployer'
  ]
)

run_list 'recipe[chef-solo-search]',
         'recipe[users::sysadmins]',
         'recipe[sudo]'

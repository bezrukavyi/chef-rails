## Step 1.

### Init project for [Chef](https://github.com/chef/chef)

```bash
mkdir rails-chef
cd rails-chef
```

```bash
touch Gemfile
```

Add to ```Gemfile```

```
source 'https://rubygems.org'

gem 'knife-solo', '~> 0.6.0'
gem 'knife-solo_data_bag', '~> 2.0.0'
gem 'berkshelf', '~> 6.3.1'
gem 'chef', '~> 12.18.31'
```

### Install gems

```bash
gem install bundler
bundle i
```

## Step 2.

### Init chef-directory structure

```bash
knife solo init .
```

You will get next directory structure

```
.
├── .chef
├── cookbooks
├── data_bags
├── environments
├── nodes
├── roles
├── site-cookbooks
├── Berksfile
```

### Install base cookbooks

Then add to ```Berksfile``` next cookbooks

* [users](https://github.com/chef-cookbooks/users)
* [sudo](https://github.com/chef-cookbooks/sudo)
* [openssh](https://github.com/chef-cookbooks/openssh)
* [nginx](https://github.com/chef-cookbooks/nginx)
* [swap_tuning](https://github.com/zuazo/swap_tuning-cookbook)
* [ufw](https://github.com/chef-cookbooks/ufw)
* [nodejs](https://github.com/redguide/nodejs)
* [postgresql](https://github.com/sous-chefs/postgresql)
* [rvm](https://github.com/martinisoft/chef-rvm)

```
source "https://api.berkshelf.com"

cookbook 'users', '~> 5.1.0'
cookbook 'sudo', '~> 3.5.3'
cookbook 'openssh', '~> 2.6.0'
cookbook 'ufw', '~> 3.1.0'
cookbook 'swap_tuning', '~> 0.2.0'
cookbook 'nodejs', '~> 4.0.0'
cookbook 'postgresql', '~> 6.1.1'
cookbook 'nginx', '~> 7.0.0'

cookbook 'rvm', github: 'martinisoft/chef-rvm', ref: 'v0.9.4'

```

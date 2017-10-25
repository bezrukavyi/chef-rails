# Step 1.

## Init project and install gems for [Chef](https://github.com/chef/chef)

```bash
mkdir rails-chef
cd rails-chef
```

```bash
touch Gemfile
```

Add to ```Gemfile```

```ruby
source 'https://rubygems.org'

gem 'knife-solo', '~> 0.6.0'
gem 'knife-solo_data_bag', '~> 2.0.0'
gem 'berkshelf', '~> 6.3.1'
gem 'chef', '~> 12.18.31'
```

Install gems

```bash
gem install bundler
bundle i
```

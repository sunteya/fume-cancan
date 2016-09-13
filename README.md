# Fume::Cancan

[![Build Status](https://travis-ci.org/sunteya/fume-cancan.svg?branch=master)](https://travis-ci.org/sunteya/fume-cancan)
[![Coverage Status](https://coveralls.io/repos/sunteya/fume-cancan/badge.png?branch=master)](https://coveralls.io/r/sunteya/fume-cancan?branch=master)

helper methods for CanCan

## Installation

Add this line to your application's Gemfile:

    gem 'fume-cancan'

## Usage

### authorize_object

~~~~ruby
# Ability:
can :manage, :admin

# Controller:
class Admin::BaseController < ApplicationController
  authorize_object :admin
end
~~~~

### with_scope

~~~~ruby
# Controller:
class Topics < ApplicationController
  load_and_authorize_resource with_scope: -> (base) { base.where(online: true) }
end
~~~~

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

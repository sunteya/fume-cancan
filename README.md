# Fume::Cancan

helper methods for CanCan

## Installation

Add this line to your application's Gemfile:

    gem 'fume-cancan'

## Usage

Ability:

	can :manage, :admin

Controller:

	class Admin::BaseController < ApplicationController
	  authorize_object :admin
	end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

require 'active_support/concern'

module Fume
  module Cancan
    module ControllerExtensions
      extend ActiveSupport::Concern

      module ClassMethods
        def authorize_object(*args)
          options = args.extract_options!
          object = args.shift || options[:object]

          filter_options = options.slice(:only, :except)
          before_action(filter_options || {}) do |controller|
            controller.send :authorize_object!, object, options
          end
        end
      end

    protected
      def authorize_object!(object, options = {})
        action = (options[:action] || params[:action]).to_sym
        authorize! action, object
      end
    end
  end
end

if defined? ActionController::Base
  ActionController::Base.send :include, ::Fume::Cancan::ControllerExtensions
end

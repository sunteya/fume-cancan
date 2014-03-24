require 'active_support/concern'

module Fume
  module Cancan
    module ControllerExtensions
      extend ActiveSupport::Concern
      
      module ClassMethods
        def authorize_object(options = {})
          filter_options = options.slice(:only, :except) if options.is_a?(Hash)
          before_filter(filter_options || {}) do |controller|
            controller.send :authorize_object!, options
          end
        end
      end
      
    protected
      def authorize_object!(options)
        action = params[:action].to_sym
        case options
        when Hash
          authorize! action, options[:object]
        else
          authorize! action, options
        end
      end
        
    end
  end
end

if defined? ActionController::Base
  ActionController::Base.send :include, ::Fume::Cancan::ControllerExtensions
end
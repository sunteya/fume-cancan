module Fume
  module Cancan
    module WithScope
      def resource_base
        base = super

        if (with_scope = @options[:with_scope])
          @controller.instance_exec(super, &with_scope)
        else
          base
        end
      end
    end
  end
end

CanCan::ControllerResource.send :prepend, ::Fume::Cancan::WithScope

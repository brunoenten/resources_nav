module ResourcesNav
  module MapperExtension
    extend ActiveSupport::Concern

    included do
      alias_method :resources_orig, :resources
      def resources(*resources, &block)
        options = resources.extract_options!.dup
        if options[:nav]
          @set.resources_nav ||= []
          @set.resources_nav << resources.first
        end
        resources_orig(*resources, &block)
      end
    end
  end
end
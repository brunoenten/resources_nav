module ResourcesNav
  module MapperExtension
    extend ActiveSupport::Concern

    included do
      alias_method :resources_orig, :resources
      def resources(*resources, &block)
        options = resources.last
        # From activesupport/lib/active_support/core_ext/array/extract_options.rb
        if options.is_a?(Hash) && options.extractable_options? && options[:nav]
          @set.resources_nav ||= []
          resources.to(-2).each do |resource|
            @set.resources_nav << ResourcesNav::Resource.new(resource, options[:nav]) unless @set.resources_nav.include?(resource)
          end
          options.delete(:nav)
        end
        resources_orig(*resources, &block)
      end
    end
  end
end
module ResourcesNav
  module MapperExtension
    extend ActiveSupport::Concern

    included do
      alias_method :resources_orig, :resources
      def resources(*resources, &block)
        options = resources.extract_options!.dup
        if options[:nav]
          @set.resources_nav ||= []
          resources.each do |resource|
            @set.resources_nav << ResourcesNav::Resource.new(resource, options[:nav]) unless @set.resources_nav.include?(resource)
          end
        end
        resources_orig(*resources, &block)
      end
    end
  end
end
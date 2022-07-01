module ResourcesNav
  module RouteSetExtension
    extend ActiveSupport::Concern

    included do
      attr_accessor :resources_nav
    end
  end
end
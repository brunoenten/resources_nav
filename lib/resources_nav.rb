require "resources_nav/version"
require "resources_nav/railtie"

require "resources_nav/route_set_extension"
require "resources_nav/mapper_extension"
module ResourcesNav
end


ActionDispatch::Routing::RouteSet.send :include, ResourcesNav::RouteSetExtension
ActionDispatch::Routing::Mapper.send :include, ResourcesNav::MapperExtension

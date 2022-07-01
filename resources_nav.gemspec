require_relative "lib/resources_nav/version"

Gem::Specification.new do |spec|
  spec.name        = "resources_nav"
  spec.version     = ResourcesNav::VERSION
  spec.authors     = ["Bruno Enten"]
  spec.email       = ["bruno@enten.me"]
  spec.homepage    = "https://github.com/brunoenten/resources_nav"
  spec.summary     = "Build your nav from resources routes"
  spec.description = "Add a :nav option to Rails routes mapper 'resources' method, that adds the resource to an array. It can be used to populate a navigation menu."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/brunoenten/resources_nav"
  spec.metadata["changelog_uri"] = "https://github.com/brunoenten/resources_nav/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_runtime_dependency 'rails', '~> 7.0', '>= 7.0.3'
end

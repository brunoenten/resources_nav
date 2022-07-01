require "test_helper"

class ResourcesNavTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert ResourcesNav::VERSION
  end

  test "it adds resources to an array" do
    assert_equal [:apples, :oranges], Rails.application.routes.resources_nav
  end
end

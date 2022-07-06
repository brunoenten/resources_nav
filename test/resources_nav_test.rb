require "test_helper"

class ResourcesNavTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert ResourcesNav::VERSION
  end

  test "it adds resources to an array when nav option is present and true" do
    [:apples, :oranges].each do |resource|
      assert Rails.application.routes.resources_nav.include?(resource)
    end
  end

  test "it doesn't add duplicates" do
    Rails.application.routes.draw do
      resources :apples
    end
    assert_equal Rails.application.routes.resources_nav.uniq, Rails.application.routes.resources_nav
  end

  test "it works also when multiple resources are specified" do
    Rails.application.routes.draw do
      resources :pears, :apricots, nav: true
    end
    [:apples, :oranges, :pears, :apricots].each do |resource|
      assert Rails.application.routes.resources_nav.include?(resource)
    end
  end

  test "it doesn't add resources to the array when nav option is false" do
    Rails.application.routes.draw do
      resources :sauerkrauts, nav: false
    end
    assert !Rails.application.routes.resources_nav.include?(:sauerkrauts)
  end

  test "it doesn't add resources to the array when nav option is not present" do
    Rails.application.routes.draw do
      resources :watermelons
    end
    assert !Rails.application.routes.resources_nav.include?(:watermelons)
  end

  test "it accepts an option hash" do
    Rails.application.routes.draw do
      resources :cherries, nav: { foo: :bar }
    end
    assert Rails.application.routes.resources_nav.include?(:cherries)
  end

  test "it stores an optional icon name" do
    Rails.application.routes.draw do
      resources :cherries, nav: { icon: 'cherry' }
    end
    assert_equal 'cherry', Rails.application.routes.resources_nav.detect {|r| r == :cherries}.icon
  end
end

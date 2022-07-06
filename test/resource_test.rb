require "test_helper"

class ResourceTest < ActiveSupport::TestCase
  test "it known its name" do
    res = ResourcesNav::Resource.new(:cats)
    assert_equal :cats, res.name
  end

  test "it is its name as a symbol" do
    res = ResourcesNav::Resource.new(:dogs)
    assert_equal :dogs, res.to_sym
  end

  test "it is its stringified name as a symbol" do
    res = ResourcesNav::Resource.new(:squirrels)
    assert_equal :squirrels.to_s, res.to_s
  end

  test "it stores an icon name if specified in the options hash" do
    res = ResourcesNav::Resource.new(:mice, { icon: 'mouse' })
    assert_equal 'mouse', res.icon
  end

  test "it is equal to its name" do
    res = ResourcesNav::Resource.new(:dolphins)
    assert res == :dolphins
  end

  test "it is equal to its stringified name" do
    res = ResourcesNav::Resource.new(:tortoises)
    assert res == :tortoises.to_s
  end

  test "it is equal to another instance with the same name" do
    res = ResourcesNav::Resource.new(:kittens)
    assert res == ResourcesNav::Resource.new(:kittens)
  end
end
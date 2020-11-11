require "minitest/autorun"
require "minitest/pride"
require "./lib/vendor.rb"
require "./lib/item.rb"

class VendorTest < Minitest::Test
  def test_it_exists_and_has_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
    assert_equal "Rocky Mountain Fresh", vendor.name
    assert_equal ({}), vendor.inventory
  end

  def test_it_can_check_items_in_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    assert_equal 0, vendor.check_stock(item1)
  end

  def test_it_can_stock_items_in_inventory
    vendor = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    vendor.stock(item1, 30)
    assert_equal ({item1 => 30}), vendor.inventory
    assert_equal 30, vendor.check_stock(item1)
  end

end
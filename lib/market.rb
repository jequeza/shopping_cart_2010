class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor_obj)
    @vendors << vendor_obj
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item_obj)
    @vendors.find_all do |vendor|
      vendor.inventory.include?(item_obj)
    end
  end

  def overstocked_items
    @vendors.each do |vendor|
      require "pry"; binding.pry
    end
  end

  def find_all_market_items
    all_items = {}
    @vendors.each do |vendor|
      vendor.inventory.each do |item, amount|
        all_items[item] += amount if !all_items[item]
      end
    end
    require "pry"; binding.pry
    all_items
  end
end
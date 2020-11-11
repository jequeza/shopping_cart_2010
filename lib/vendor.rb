class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item_obj)
    if !@inventory[item_obj]
      0
    end
  end
end
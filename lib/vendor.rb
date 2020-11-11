class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item_obj)
    if !@inventory[item_obj]
      0
    else
      @inventory[item_obj]
    end
  end

  def stock(item_obj, amount)
    @inventory[item_obj] += amount
  end
end
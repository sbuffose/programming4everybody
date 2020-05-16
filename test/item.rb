class Item
  attr_reader :name, :old_price, :price

  def initialize(attr)
    @name = attr[:name]
    @old_price = attr[:old_price]
    @price = attr[:price] || "N/A"
  end

  def discount
    return 0 if old_price == "N/A" || old_price.zero? || price == old_price
    (((old_price - price).to_f / old_price.to_f) * 100).round(0)
  end

  def build_csv
    [@name, @old_price, @price]
  end
end

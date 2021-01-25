class Person
  attr_accessor :age

  def initialize(age = 0)
    @age = age
  end

  def birthday
    self.age += 1
  end
end

class Item
  attr_reader :name, :price, :amt

  def initialize(name, price, amt = 1)
    @name = name
    @price = price * amt
    @amt = amt
  end
end

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0;
    @discount = discount
    @items = [];
  end

  def add_item(name, price, amt = 1)
    item = Item.new(name, price, amt)
    @total += item.price
    @items << item.name
  end

  def apply_discount
    return "There is no discount to apply." if @discount <= 0
    @total -= @total * @discount / 100
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
end

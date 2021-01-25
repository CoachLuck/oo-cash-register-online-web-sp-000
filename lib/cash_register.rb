class Person
  attr_accessor :age

  def initialize(age = 0)
    @age = age
  end

  def birthday
    self.age += 1
  end
end

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0;
    @discount = discount
    @items = [];
  end

  def add_item(title, price, amt = 1)
    self.total += price * amt
    item = {title: title, price: price, amount: amt}
    self.items << title
  end

  def apply_discount
    @total -= ((@total) / (100 - @discount))
  end

  def items
    @items
  end
end

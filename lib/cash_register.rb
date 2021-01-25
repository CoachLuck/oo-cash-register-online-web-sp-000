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
  attr_accessor :total, :items

  def initialize(discount = 0)
    @total = 0;
    @discount = discount
    @items = [];
  end

  def add_item(title, price, amt = 1)
    self.total += price
    item = {title: title, price: price, amount: amt}
    self.items << item
  end

  def items
    @items.collect{ |item| item[:title]}
  end
end

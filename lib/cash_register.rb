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
  @items = []

  def initialize(discount = 0)
    @total = 0;
  end

  def add_item(title, price, amt = 1)
    item = {title: title, price: price: amt}
    @items << item
  end
end

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
    amt.times do
      self.total += price
      self.items << title
    end
  end

  def apply_discount
    return "There is no discount to apply." if @discount <= 0
    @total -= @total * @discount / 100
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end
end

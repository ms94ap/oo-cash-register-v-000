class CashRegister

  attr_accessor :total, :discount, :items, :last_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, item_quanity = 1)
    self.total += (price * item_quanity)
    item_quanity.times {@items << title}
    @last_total = item_quanity * price
  end

  def apply_discount
    if @discount != 0
      self.total -= (self.total * @discount / 100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_total
  end

end

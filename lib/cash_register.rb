class CashRegister
attr_accessor :discount, :total
def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1)
  @items << title
  @total += (price * quantity) * (@discount / 100)
end


end

hi = CashRegister.new(5)
puts hi.total

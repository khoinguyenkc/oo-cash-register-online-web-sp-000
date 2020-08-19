require 'pry'
class CashRegister
attr_accessor :discount, :total
def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1)
  @items << title
  #x = 
  #binding.pry
  @total += (price * quantity) #* (@discount / 100)
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    reducedtotal = @total *  (@discount / 100)
    @total = reducedtotal
    return "After the discount, the total comes to $#{reducedtotal}."
  end
end

end

hi = CashRegister.new(5)
hi.add_item("computer", 1000)
#hi.apply_discount
puts hi.total

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
  @total += (price * quantity) #* (@discount / 100)
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    #ruby rounds up results if it's integers... a mess
    discountamount = @total *  (@discount.to_f / 100)
    #binding.pry
    @total -= discountamount
    return "After the discount, the total comes to $#{@total}."
  end
end

end

hi = CashRegister.new(5)
hi.add_item("computer", 1000)
puts hi.apply_discount
puts hi.total

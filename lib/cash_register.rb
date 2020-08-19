class CashRegister
attr_accessor :discount, :total
def initialize(discount = 0)
  @total = 0
  @discount = discount
end


end

hi = CashRegister.new(5)
puts hi.total

require 'pry'

class CashRegister

    attr_accessor :total, :discount

    def initialize(total = 0, discount = 20)
        @total = total
        @discount = discount
        @cart = []
    end
    
    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        self.cart.push(title)
    end
end

# def apply_discount
#     new_total = @total * (100-discount)/100
#     @total = new_total
#     "After the discount, the total comes to $#{@total}."
#     if @discount == 0 
#         "There is no discount to apply."
#     end
# end

# def items
#     @cart
# end

# def void_last_transaction
#     @cart.shift
# end
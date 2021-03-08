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
    end
    
    def apply_discount
        if discount != 0
            self.total = total * ((100-discount.to_f)/100).to_i
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
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
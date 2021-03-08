require 'pry'

class CashRegister

    attr_accessor :total, :discount

    def initialize(total = 0, discount = 20)
        @total = total
        @discount = discount
        @cart = []
    end
    
    def items
        @cart
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        @cart.push(title)
    end

    def apply_discount
        if self.discount != 0
            self.total = self.total * ((100-discount.to_f)/100).to_i
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
    end

    def void_last_transaction

    end
end

# def void_last_transaction
#     @cart.shift
# end
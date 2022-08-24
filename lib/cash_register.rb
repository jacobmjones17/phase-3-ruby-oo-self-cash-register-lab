class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize (discount=0)
        @total=0
        @discount = discount
        @items=[]
    end

    def add_item(title, price, quantity=1)

        self.last_transaction = price * quantity
        
        @total += self.last_transaction

        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else @discount == 20
            discount_amount = @total.to_f * 0.2
            @total = @total - discount_amount.to_i
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total -= self.last_transaction
    end

end
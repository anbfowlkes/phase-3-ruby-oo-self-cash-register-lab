class CashRegister
    attr_accessor :discount, :total, :last_transaction
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end
    def total=(num)
        @total = num
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction = price * quantity
        @total += price * quantity
        quantity.times do |i|
          @items << title
        end   
    end

    def items
        @items
    end

    def apply_discount
        if self.discount != 0
            self.total = (self.total * (1.0 - self.discount/100.0)).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        items.pop
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end

end
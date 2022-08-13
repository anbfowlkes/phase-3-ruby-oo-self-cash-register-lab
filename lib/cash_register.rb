class CashRegister
    attr_accessor :discount, :total
    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def total
        @total
    end
    def total=(num)
        @total = num
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
    end

    def apply_discount
        self.total = self.total * (1 - self.discount/100.0)
    end

end
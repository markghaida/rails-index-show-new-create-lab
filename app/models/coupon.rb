class Coupon < ApplicationRecord
    def code_and_store
        self.coupon_code + " | " + self.store
    end 
end

class CouponsController < ApplicationController

    def index 
        @coupons = Coupon.all 
    end 

    def new
        @coupon = Coupon.new
    end 

    def show
        #byebug
        @coupon = Coupon.find(params[:id])
    end 

    def create
       #byebug
        @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to coupon_path(@coupon.id)
    end 
end

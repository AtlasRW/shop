class OrdersController < ApplicationController
    def show
        @order = Order.find(params[:id])  
    end

    def create
        @order=Order.new(user_id:params(:user_id) , item_id:params(:item_id))
        
    def index
        @orders = Order.all
    end

    def destroy
        Order.find(params[:id]).destroy
    end
end

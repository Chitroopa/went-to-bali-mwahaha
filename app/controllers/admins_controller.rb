class AdminsController < ApplicationController

  def show
    @products = Product.all
    @order_item = current_order.order_items.new
  end

end

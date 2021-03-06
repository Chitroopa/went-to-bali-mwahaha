class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { render :show}
      format.js
    end
  end

  def new
    @product = Product.new
    respond_to do |format|
      format.html { render :new}
      format.js
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      respond_to do |format|
        flash[:success] = "New product created successfully!"
        format.html { redirect_to '/'}
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|

      format.html { redirect_to admin_path}
      format.js
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = "Product updated successfully!"
      redirect_to admin_path
    else
      render :edit
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end

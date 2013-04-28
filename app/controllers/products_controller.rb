class ProductsController < ApplicationController
  def index
  end

  def new
    @store = Store.find(params[:store_id])
    @product = Product.new
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def create
    @product = Product.new(params[:product])
    @store =Store.find(params[:store_id])
    @product.store = @store
    if @product.save
      redirect_to store_path(@store), :notice => "Producto Agregado"
    else
      render "new"
    end
  end
end

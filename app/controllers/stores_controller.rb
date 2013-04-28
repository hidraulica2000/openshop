class StoresController < ApplicationController
  def index
    stores = current_user.stores
  end

  def edit
    @store = Store.find(params[:id])
  end

  def new
    unless current_user.stores.count <= 3
      @store = Store.new
    else
      redirect_to myaccount_path(tab: 'store'), :alert => "Solo puedes crear un maximo de 3 tiendas"
    end
  end

  def create
    @store = Store.new(params[:store])
    @store.user = current_user
    if @store.save
      redirect_to myaccount_path(tab: 'store'), :notice => "Tienda creada exitosamente"
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def destroy
  end

  def update
    @store = Store.find(params[:id])
      if @store.update_attributes(params[:store])
        redirect_to myaccount_path(tab: 'store'), notice: 'Producto Actualizado.'
      else
        render action: "edit"
      end
  end
end

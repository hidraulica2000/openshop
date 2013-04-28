class HomeController < ApplicationController
  def index
  end

  def myaccount
    @stores = current_user.stores
  end
end

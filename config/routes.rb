Openshop::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }

  root :to => "home#index"
  get "myaccount" => "home#myaccount", :as => :myaccount
  resources :stores do
    resources :products
  end
end

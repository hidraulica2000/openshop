class Product < ActiveRecord::Base
  belongs_to :store
  attr_accessible :condition, :description, :price, :published, :title
end

class ProductDetail < ActiveRecord::Base
  
  belongs_to :member
  attr_accessible :coach_price, :item, :market_price, :photo

  has_attached_file :photo
end

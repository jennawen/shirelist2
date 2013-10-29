class Listing < ActiveRecord::Base
  attr_accessible :title, :description, :price, :listing_key

end

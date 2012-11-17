class Category < ActiveRecord::Base
  has_many :provider
  attr_accessible :name
end

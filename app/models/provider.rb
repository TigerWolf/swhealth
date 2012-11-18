class Provider < ActiveRecord::Base
  belongs_to :categories
  attr_accessible :address1, :fax, :firstName, :glat, :glong, :name, :orgName, :orgSubType, :orgType, :phone, :postCode, :providerName, :providerNumber, :state, :suburb, :title, :category_id

def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
end
  
end

class Provider < ActiveRecord::Base
  belongs_to :categories
  attr_accessible :address1, :fax, :firstName, :glat, :glong, :name, :orgName, :orgSubType, :orgType, :phone, :postCode, :providerName, :providerNumber, :state, :suburb, :title, :category_id
end

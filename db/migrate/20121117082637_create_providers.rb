class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :address1
      t.string :fax
      t.string :firstName
      t.float :glat
      t.float :glong
      t.string :name
      t.string :orgName
      t.string :orgSubType
      t.string :orgType
      t.string :phone
      t.integer :postCode
      t.string :providerName
      t.string :providerNumber
      t.string :state
      t.string :suburb
      t.string :title

      t.timestamps
    end
  end
end


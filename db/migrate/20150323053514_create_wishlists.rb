class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :wname
      t.string :wtype
      t.string :isActive
      t.string :wdescription
      t.attachment :wphoto
      t.references :charity, index: true

      t.timestamps
    end
  end
end

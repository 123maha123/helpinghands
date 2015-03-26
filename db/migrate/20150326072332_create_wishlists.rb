class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :wname
      t.string :wtype
      t.string :isActive
      t.string :wdescription
      t.attachment :wphoto
      t.integer :charity_id

      t.timestamps
    end
  end
end

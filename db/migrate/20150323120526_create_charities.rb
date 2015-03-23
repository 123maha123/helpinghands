class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :charityName
      t.string :ownerfname
      t.string :ownerlname
      t.string :address
      t.string :city
      t.string :landmark
      t.string :state
      t.string :country
      t.integer :phoneNo
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end

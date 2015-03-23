class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :city
      t.string :landmark
      t.string :state
      t.string :country
      t.integer :phoneNo
      t.references :user, index: true

      t.timestamps
    end
  end
end

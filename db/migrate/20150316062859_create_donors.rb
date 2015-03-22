class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :fname
      t.string :lname
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :city
      t.string :landmark
      t.string :state
      t.string :country
      t.integer :phoneNo

      t.timestamps
    end
  end
end

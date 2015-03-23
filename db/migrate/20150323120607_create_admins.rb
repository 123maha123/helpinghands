class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.integer :phoneNo
      t.references :user, index: true

      t.timestamps
    end
  end
end

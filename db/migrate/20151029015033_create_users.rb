class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :role
      t.string :address2
      t.string :town2
      t.string :zipcode2
      t.string :pays2
      t.timestamps null: false
    end
  end
end

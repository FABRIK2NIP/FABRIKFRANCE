class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.string :attachment
      t.string :name
      t.string :materiau
      t.string :qualite
      t.string :livraison
      t.string :address

      t.timestamps
    end
  end
end

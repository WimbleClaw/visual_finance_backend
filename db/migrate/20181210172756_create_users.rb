class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :age
      t.string :location
      t.string :children
      t.integer :spending_datum_id

      t.timestamps
    end
  end
end

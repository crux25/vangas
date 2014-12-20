class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :department, null: false
      t.string :traker_name
      t.string :address
      t.string :phone
      t.date :birthday
      t.string :team
      t.string :status
      t.boolean :activated, default: false
      t.text :about

      t.timestamps null: false
    end
     add_index :users, :name
  end
end

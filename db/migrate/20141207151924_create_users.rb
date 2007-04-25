class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :department
      t.string :class
      t.string :traker_name
      t.string :address
      t.string :phone
      t.date :birthday
      t.string :email
      t.string :team
      t.string :status
      t.boolean :activated
      t.text :about

      t.timestamps null: false
    end
  end
end

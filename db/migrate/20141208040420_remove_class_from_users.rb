class RemoveClassFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :class, :string
  end
end

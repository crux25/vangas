class RenameColumnbirthdayinUserstobornOn < ActiveRecord::Migration
  def change
    rename_column :users, :birthday, :born_on
  end
end

class RemoveUsernameFromChefs < ActiveRecord::Migration
  def change
    remove_column :chefs, :username, :string
  end
end

class AddChefnameToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :chefname, :string
  end
end

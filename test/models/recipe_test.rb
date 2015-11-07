require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    
   def setup
       @chef = Chef.create(chefname: "Geo Tharp", email: "geo@tharp.com")
       @recipe = @chef.recipes.build(name: "chicken parm", summary: "this is the best chicken parm recipe ever", 
       description: "heat oil for 20 minutes, then add tomato
       and fried chicken")
   end
   
   test "recipe should be valid" do
       assert @recipe.valid?
   end
   
   test "chef_id should be present" do
       @recipe.chef_id = nil
       assert_not @recipe.valid?
   end
   
   test "name should be present" do
       @recipe.name = " "
       assert_not @recipe.valid?
   end
   
   test " name length should not be too long" do
       @recipe.name = "a" * 101
       assert_not @recipe.valid?
       
   end
   
   test "name length should not be too short" do
       @recipe.name = "aaa"
       assert_not @recipe.valid?
   end
   
   test "summary should be present" do
       @recipe.summary = " "
       assert_not @recipe.valid?
   end
   
   test "summary length should not be too long" do
       @recipe.summary = "a" * 101
       assert_not @recipe.valid?
   end
   
   test "summary length should not be too short" do
       @recipe.summary = "aas"
       assert_not @recipe.valid?
   end
   
   test "description should be present" do
       @recipe.description = " "
       assert_not @recipe.valid?
   end
   
   test "description length should not be more than 500 words" do
       @recipe.description = "a" * 501
       assert_not @recipe.valid?
   end
   
   test "description length should not be less than 15 words" do
       @recipe.description = "a" * 14
       assert_not @recipe.valid?
   end
   
   
   
   
    
end
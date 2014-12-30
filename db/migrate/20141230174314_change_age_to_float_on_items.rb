class ChangeAgeToFloatOnItems < ActiveRecord::Migration
  def change
  	change_column :items, :age, :float 
  end
end

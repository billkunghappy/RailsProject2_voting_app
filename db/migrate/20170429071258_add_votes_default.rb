# use    'rails g migration migration_name'  to create a new migration file
class AddAgeDefault < ActiveRecord::Migration[5.0]
  def change
  	change_column :candidates,:votes,:integer,:default => 0
  end
end


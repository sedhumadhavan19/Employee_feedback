class DeleteNameFromEmployee < ActiveRecord::Migration[5.1]
  def change
  	remove_column :employees, :name, :string
  	add_column :employees, :first_name, :string
  	add_column :employees, :last_name, :string
  end
end

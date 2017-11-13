class RemoveEmailFromEmployee < ActiveRecord::Migration[5.1]
  def change
  	remove_column :employees, :email, :string
  end
end

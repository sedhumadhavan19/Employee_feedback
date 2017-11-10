class AddRegardingFieldToEmployee < ActiveRecord::Migration[5.1]
  def change
  	add_column :employees, :regarding_field, :string
  end
end

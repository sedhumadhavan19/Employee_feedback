class RenameColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :feedback_comments, :employees_id, :employee_id
  end
end

class RemoveFeedbackFromEmployee < ActiveRecord::Migration[5.1]
  def change
  	remove_column :employees, :feedback_type, :string
  	remove_column :employees, :feedback_description, :string
  	remove_column :employees, :regarding_field, :string
  end
end

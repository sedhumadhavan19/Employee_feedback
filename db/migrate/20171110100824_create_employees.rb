class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
    	t.string :name
      t.string :designation
      t.string :email
      t.string :phone_number
      t.string :feedback_type
      t.string :feedback_description

      t.timestamps
    end
  end
end

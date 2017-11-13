class AddFeebackToEmployee < ActiveRecord::Migration[5.1]
  def change
  	add_reference :feedback_comments, :employees, foreign_key: true
  end
end

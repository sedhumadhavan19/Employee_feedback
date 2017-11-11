class CreateFeedbackComments < ActiveRecord::Migration[5.1]
  def change
    create_table :feedback_comments do |t|
      t.string :type
      t.string :description
      t.string :regarding_field

      t.timestamps
    end
  end
end

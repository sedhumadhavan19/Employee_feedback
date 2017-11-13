class FeedbackComment < ApplicationRecord
  belongs_to :employee
  #enum
  enum type: [:Comments, :Questions]
end

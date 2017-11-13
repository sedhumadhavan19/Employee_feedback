class FeedbackComment < ApplicationRecord
  belongs_to :employee
  #enum
  enum type: [:comments, :questions]
end

class Employee < ApplicationRecord
	
	has_many :feedback_comments

	#cocoon
	accepts_nested_attributes_for :feedback_comments, reject_if: :all_blank
	
	#paperclip
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end

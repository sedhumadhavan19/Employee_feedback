class Employee < ApplicationRecord
	
	#paperclip
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  #validation
  validates :feedback_description, presence: true
  validates :regarding_field, presence: true
end

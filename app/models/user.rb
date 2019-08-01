class User < ApplicationRecord
  has_secure_password
	
	# Associations
	has_many :articles, dependent: :destroy
	has_many :images, as: :imageable, dependent: :destroy

	# callbacks
  before_save {self.email = email.downcase}

  # Validations
	validates :username, presence: true,uniqueness: { case_sensitive: false }, 
	          length: {minimum:3 , maximum:25 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum:115 },
             uniqueness: { case_sensitive: false },
             format: { with: VALID_EMAIL_REGEX }

end
class User < ApplicationRecord
	include ImageAssociations
	require 'date'
  has_secure_password
	
	# Associations
	has_many :articles, dependent: :destroy
	has_many :images, as: :imageable, dependent: :destroy

	# callbacks
  before_save {self.email = email.downcase}

  # Validations
	validates :username, presence: true,uniqueness: { case_sensitive: false }, 
	          length: {minimum:3 , maximum:25 }
	validate :check_age

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum:115 },
             uniqueness: { case_sensitive: false },
             format: { with: VALID_EMAIL_REGEX }


   def some
   	::Article
   end

   def check_age
   		birth_year = Date.parse(self.dob).year
   		curr_year = Time.now.year
   		user_age = curr_year - birth_year
   		if user_age < 18
   			errors.add(:User, "Not allowed to Sign up age should be 18+")
   		end
   end
end

# User.create({name: ""})
# insert name="adhd" into users;

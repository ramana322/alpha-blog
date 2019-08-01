class Image < ApplicationRecord
	belongs_to :imageable, polymorphic: true
	after_create :send_image_to_s3

	def send_image_to_s3

	end
end

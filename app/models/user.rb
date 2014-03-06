class User < ActiveRecord::Base

	attr_accessor :name, :email

	validates :name, presence: true, length: { maximum: 50, minimum: 5}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

end

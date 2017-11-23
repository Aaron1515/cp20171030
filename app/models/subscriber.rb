class Subscriber < ApplicationRecord

	has_many :activities

	validates :email, presence: true
	validates :email, uniqueness: true

end

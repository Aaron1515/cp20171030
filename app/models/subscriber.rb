class Subscriber < ApplicationRecord

	has_many :activities

	validates :email, presence: true, uniqueness: { case_sensitive: false }

end

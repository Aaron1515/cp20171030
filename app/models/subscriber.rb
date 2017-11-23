class Subscriber < ApplicationRecord

	has_and_belongs_to_many :activities

	validates :email, :presence => true

end

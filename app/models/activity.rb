class Activity < ApplicationRecord

	has_and_belongs_to_many :subscribers

	validates :note, :presence => true

end

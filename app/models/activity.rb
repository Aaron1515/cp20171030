class Activity < ApplicationRecord

	belongs_to :info, polymorphic: true, optional: true

	validates :note, presence: true

end

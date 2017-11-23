class Activity < ApplicationRecord

	belongs_to :info, polymorphic: true

end

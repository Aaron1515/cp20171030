class Activity < ApplicationRecord

	belongs_to :info, polymorphic: true, optional: true

end

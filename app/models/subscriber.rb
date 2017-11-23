class Subscriber < ApplicationRecord

	has_many :activities

	validates :email, presence: true, uniqueness: { case_sensitive: false },:length => { minimum: 3, maximum: 100 }

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

end

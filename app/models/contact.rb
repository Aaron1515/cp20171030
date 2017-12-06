class Contact < ApplicationRecord

	has_many :infos, class_name: 'Activity', foreign_key: 'info_id'

	validates :email, presence: true,:length => { minimum: 3, maximum: 100 }
	validates :name, presence: true
	validates :comment, presence: true


  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create


end

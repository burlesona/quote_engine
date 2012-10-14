class Source < ActiveRecord::Base
	# Mass-Assignment protection
	attr_accessible :bio, :first_name, :middle_name, :official_name, :title

	# Relationships
	has_many :quotes

	# Validations
	validates_presence_of :official_name

	def to_s
		full_name
	end

	def full_name
		[title, first_name, middle_name, official_name].join(' ')
	end
end
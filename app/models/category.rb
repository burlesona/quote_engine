class Category < ActiveRecord::Base
	# Mass-Assignment protection
  attr_accessible :name

  # Relationships
  has_many :quotes

  # Validations
  validates_uniqueness_of :name

  def to_s
  	name
  end
end

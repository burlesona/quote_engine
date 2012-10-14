class Quote < ActiveRecord::Base
	# Mass Assignment Protection
  attr_accessible :content, :context, :source_id, :category_id

  # Relationships
  belongs_to :source
  belongs_to :category

  # Validations
  validates_presence_of :content, :source, :category
end

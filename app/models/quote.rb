class Quote < ActiveRecord::Base
	# Mass Assignment Protection
  attr_accessible :content, :context, :source_id, :category_id

  # Relationships
  belongs_to :source
  belongs_to :category

  # Validations
  validates_presence_of :content, :source, :category

  # Default order
  # default_scope order('created_at DESC')

  def to_s
  	content
  end

  def self.search(term)
  	if term
  		where("content LIKE ?", "% #{term} %")
  	else
  		scoped
  	end
  end
end

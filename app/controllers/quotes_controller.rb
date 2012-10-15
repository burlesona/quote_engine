class QuotesController < ApplicationController
	def index
		load_quotes
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def load_quotes
		case
		when params[:source_id]
			@source = Source.find(params[:source_id])
			@quotes = @source.quotes
		when params[:category_id]
			@category = Category.find(params[:category_id])
			@quotes = @category.quotes
		else
			@quotes = Quote.all
		end
	end
end

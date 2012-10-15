class QuotesController < ApplicationController
	before_filter :authenticate, :except => [:index, :show]

	def index
		@quotes = Quote.joins(:source,:category).search(params[:search]).sorted(params[:sort], "official_name ASC").page(params[:page])
	end

	def show
		@quote = Quote.find( params[:id] )
	end

	def new
		@quote = Quote.new
	end

	def create
		if @quote = Quote.create( params[:quote] )
			redirect_to quotes_path, :notice => 'Quote added successfully.'
		else
			render 'new'
		end
	end

	def edit
		@quote = Quote.find( params[:id] )
	end

	def update
		if @quote = Quote.update_attributes( params[:quote] )
			redirect_to quotes_path, :notice => 'Quote updated successfully.'
		else
			render 'edit'
		end
	end

	def destroy
		@quote = Quote.find( params[:id] )
		@quote.destroy
		redirect_to quotes_path, :notice => 'Quote deleted.'
	end
end

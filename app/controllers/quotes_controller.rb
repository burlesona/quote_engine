class QuotesController < ApplicationController
	def index
		@quotes = Quote.joins(:source,:category).search(params[:search]).sorted(params[:sort], "official_name ASC").page(params[:page])
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
end

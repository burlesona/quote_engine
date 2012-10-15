class QuotesController < ApplicationController
	def index
		@quotes = Quote.search(params[:search]).page(params[:page]).per(50)
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

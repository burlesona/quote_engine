class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
    @quotes = @category.quotes.joins(:source).sorted(params[:sort], "official_name ASC").page(params[:page])
  end

  def new
  end

  def edit
  end
end

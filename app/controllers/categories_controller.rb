class CategoriesController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]

  def index
  	@categories = Category.order('name ASC').page(params[:page])
  end

  def show
  	@category = Category.find(params[:id])
    @quotes = @category.quotes.joins(:source).sorted(params[:sort], "official_name ASC").page(params[:page])
  end

  def new
    @category = Category.new
  end

  def create
    if @category = Category.create( params[:category] )
      redirect_to categories_path, :notice => 'Category added successfully.'
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find( params[:id] )
  end

  def update
    if @category = Category.update_attributes( params[:category] )
      redirect_to categories_path, :notice => 'Category updated successfully.'
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find( params[:id] )
    @category.destroy
    redirect_to categories_path, :notice => 'Category deleted.'
  end
end

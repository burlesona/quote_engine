class SourcesController < ApplicationController
  def index
  	@sources = Source.order('official_name ASC')
  end

  def show
  	@source = Source.find(params[:id])
    @quotes = @source.quotes.joins(:category).sorted(params[:sort], "name ASC").page(params[:page])
  end

  def new
  end

  def edit
  end
end

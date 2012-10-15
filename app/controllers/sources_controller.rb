class SourcesController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]
  def index
  	@sources = Source.order('official_name ASC').page(params[:page])
  end

  def show
  	@source = Source.find(params[:id])
    @quotes = @source.quotes.joins(:category).sorted(params[:sort], "name ASC").page(params[:page])
  end

  def new
    @source = Source.new
  end

  def create
    if @source = Source.create( params[:source] )
      redirect_to sources_path, :notice => 'Source added successfully.'
    else
      render 'new'
    end
  end

  def edit
    @source = Source.find( params[:id] )
  end

  def update
    if @source = Source.update_attributes( params[:source] )
      redirect_to sources_path, :notice => 'Source updated successfully.'
    else
      render 'edit'
    end
  end

  def destroy
    @source = Source.find( params[:id] )
    @source.destroy
    redirect_to sources_path, :notice => 'Source deleted.'
  end
end

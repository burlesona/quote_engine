class SourcesController < ApplicationController
  def index
  	@sources = Source.order('official_name ASC')
  end

  def show
  	@source = Source.find(params[:id])
  end

  def new
  end

  def edit
  end
end

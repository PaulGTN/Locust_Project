class SearchesController < ApplicationController

  def new
    @search = Search.new
    @bars = Bar.uniq.pluck(:name)
    @cities = Bar.uniq.pluck(:city)
    @tags = Tag.uniq.pluck(:name)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:name, :tag, :city)

end

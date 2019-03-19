class SearchesController < ApplicationController

  def new
    @search = Search.new
    @price = Bar.pluck(:price_id)
    @cities = Bar.pluck(:city)
    @tags = Tag.pluck(:name)
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
    params.require(:search).permit(:price, :tags, :city)
  end

end

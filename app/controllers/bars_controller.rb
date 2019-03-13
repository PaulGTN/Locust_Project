class BarsController < ApplicationController

  def index
    @bars = Bar.all
  end

  def new
    @bars = Bar.new
    @tags = Tag.all
  end
  
end

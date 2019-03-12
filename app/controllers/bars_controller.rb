class BarsController < ApplicationController

  def index
    @bars = Bar.all
  end
  
end

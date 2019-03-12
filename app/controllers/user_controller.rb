class UserController < ApplicationController

  def index
    @bar = Bar.all
  end

end

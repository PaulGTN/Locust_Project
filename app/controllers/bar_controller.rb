class BarController < ApplicationController
  before_action :is_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private 

  def is_admin
    @bar = Bar.find(params[:id])
    unless user_signed_in? && current.user.role === 'admin'
      flash[:danger] = "Vous ne pouvez pas accéder à cette page"
      redirect_to root_path
    end
  end

end

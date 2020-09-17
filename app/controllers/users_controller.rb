class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]

  def update
    @user = current_user 
    @user.update(employed:true) 
    redirect_to root_path
  end

  def show
    @user = user_finder
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  private

  def user_finder
    User.find(params[:id])
  end
  
  def authenticate_user
    if current_user
      redirect_to root_path if current_user != user_finder
    else
      redirect_to root_path
    end
  end
end

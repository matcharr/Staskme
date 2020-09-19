class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]
  before_action :only_for_client, only: [:update]

  def update
    @user = current_user
    Mission.where(user_id: @user.id).destroy_all
    @user.update(employed: true) 
    redirect_to root_path
  end

  def show
    @user = user_finder
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def index
    @users = User.all
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  private
  
  def authenticate_user
    if current_user
      redirect_to root_path if current_user.is_admin == true || current_user != user_finder 
    else
      redirect_to root_path
    end
  end
end

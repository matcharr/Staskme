class UsersController < ApplicationController
   before_action :authenticate_user, only: [:show]

  #  def update
  #     @user = user_finder
  #     @user.update(user_params)
  #     redirect_to root_path
  #  end

  def show
    @user = user_finder
  end

   private

   def user_finder
      User.find(params[:id])
    end
  
    def authenticate_user
      redirect_to root_path if current_user != user_finder unless current_user.is_admin == true
    end
  
    def user_params
      params.require(:user).permit(:email, :password)
    end
end

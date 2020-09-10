class MissionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

   def new
      @mission = Mission.new
   end

   def create
      @mission = Mission.new(mission_params)
      @mission.user_id = current_user.id
      if @mission.save
        redirect_to root_path
      else
        render 'new'
      end
   end
   private

   def mission_params
    params.require(:mission).permit(:title, :start_date, :description, :category_id)
   end

   def category_params
   end
end

class MissionsController < ApplicationController
   def new
      @mission = Mission.new
   end

   def index
      @missions = Mission.all
   end

   def show 
      @mission = Mission.find(params[:id])
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
     params.require(:mission).permit(:title, :start_date, :description)
   end
end

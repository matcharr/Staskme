class EnrollmentsController < ApplicationController

  def create
  	user = current_user
  	@mission = Mission.find(params[:mission_id])
  	e = Enrollment.new(user: user, mission: @mission)
  	if e.save
  		respond_to do |format|
      	format.html {}
      	format.js {}
    	end
    	@mission.update(statut: false)
  	end
  end

  def show
  	@user = User.find(params[:id])
  	@missions = @user.missions
		respond_to do |format|
			format.html {}
			format.js {}
		end
  end

end

class ApplicationController < ActionController::Base

	before_action :expired_mission

	def expired_mission
		missions = Mission.all
		missions.each { |mission| mission.delete if mission.start_date < DateTime.now unless mission.statut == true }
	end

	def user_finder
    User.find(params[:id])
  end

  def only_for_client
    redirect_to root_path if current_user && (current_user.is_admin || current_user.employed)
  end

end

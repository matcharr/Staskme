class ApplicationController < ActionController::Base

	before_action :expired_mission

	def expired_mission
		missions = Mission.all
		missions.each { |mission| mission.delete if mission.start_date < DateTime.now }
	end

end

class Admin::AdminController < ApplicationController
	before_action :admin?

	def index
		@missions = Mission.all
		respond_to do |format|
			format.html {}
			format.js {}
		end
	end

	def show
		@user = user_finder
		respond_to do |format|
			format.html { redirect_to admin_root_path }
			format.js {}
		end
	end

private

	def admin?
		puts current_user
		redirect_to root_path if !current_user || !current_user.is_admin
	end

end

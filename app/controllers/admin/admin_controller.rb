class Admin::AdminController < ApplicationController
	before_action :admin?

	def index
		
	end

private

	def admin?
		redirect_to root_path if current_user.is_admin == false		
	end

end

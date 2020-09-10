module Admin::AdminHelper
	def is_admin?
		current_user && current_user.is_admin == true ? true : false
	end
end

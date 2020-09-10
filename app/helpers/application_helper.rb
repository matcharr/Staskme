module ApplicationHelper
	def only_admin
		current_user.is_admin if current_user
	end
end

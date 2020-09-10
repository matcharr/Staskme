module ApplicationHelper
	def only_admin
		current_user.is_admin
	end
end

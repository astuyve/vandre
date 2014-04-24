module PostsHelper
	def correct_user(post)
		#if current_user and (idea.created_by.to_s == current_user.id.to_s
		if current_user and can? :manage, post
			return true
		else
			return false
		end
	end
end

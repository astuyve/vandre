module UsersHelper
	def latest(user)
		return @post = user.posts.last
	end
end

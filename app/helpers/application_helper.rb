module ApplicationHelper

	def redirect_back_or_default(message, default = root_url)
		if request.env["HTTP_REFERER"].present? and
		request.env["HTTP_REFERER"] != request.env["REQUEST_URI"]
			flash[:alert] = message
			redirect_to :back
		else
			flash[:alert] = message
			redirect_to default
		end
	end

end

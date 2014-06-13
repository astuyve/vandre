module ApplicationHelper

  def current_page(page, action)
    if controller.controller_name.to_s == page && controller.action_name.to_s == action
      'active'
    else
      'inactive'
    end
  end

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

class Reports::HttpUserAgentsController < Reports::BaseController
  def index
    @hits = Hit.http_user_agents(params)
  end
  
  def set_http_user_agent
    params[:controller] = "traffic"
    params[:action] = "index"
    redirect_to(params)
  end
end

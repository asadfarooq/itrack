class Reports::DomainsController < Reports::BaseController  
  def index
    @hits = Hit.domains(params)
  end
  
  def set_domain
    params[:controller] = "traffic"
    params[:action] = "index"
    redirect_to(params)
  end
end

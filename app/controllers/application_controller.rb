class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :prepare_for_mobile

  private

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    if mobile_device?
       request.format = :mobile 
    else
       #temporary for testing request format for desktop browsers also mobile
       # TODO redirect to another info view to inform user that this is mobile optimized site and that for 
       # desktop browser he/she should use desktop version of intenet banking
       request.format = :mobile 
       #redirect_to 'http://www.kaba.hr'  
    end   
  end
end

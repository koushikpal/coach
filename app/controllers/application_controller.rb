class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  def authorize
    if current_member.blank?
      flash[:error] = "unauthorized access"
     # redirect_to new_member_session_url
    false
    end
  end

end

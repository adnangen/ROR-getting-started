class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  before_action :authorize
  protected
  def authorize
    unless User.find_by(id: session[:user_id])
        redirect_to admin_url, notice:"You trying to access without permission"
    end
  end

end
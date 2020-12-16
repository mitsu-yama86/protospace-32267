class ApplicationController < ActionController::Base
  before_action :configure_parmitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  
  private
  def configure_parmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :profile, :occupation, :position])
  end
end

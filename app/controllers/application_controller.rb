class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?
  
  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :address, :phone_number, :password, :establishment, :avatar, :avatar_cache)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :address, :phone_number, :password, :current_password, :establishment,:avatar, :avatar_cache)}
  end

 

  private
  def doctor_required
    redirect_to profile_index_path unless current_user.establishment
  end
  def patient_required     
    if current_user.establishment == 'false' 
      redirect_to profile_index_path
    end
  end
  
end

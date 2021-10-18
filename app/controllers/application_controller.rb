class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_devise_parameters, if: :devise_controller?

    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:signup){|u| u.permit(:name, :email, :encrypted_password, :address, :phone_number, :service, :hourly, :establishment, :avatar)}
    end
end

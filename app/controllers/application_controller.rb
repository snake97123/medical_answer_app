class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_nickname, :pharmacist_nickname, :number, :family_name, :first_name, :family_name_kana, :first_name_kana, :phone_number])
  end
end

class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, if: :devise_controller?

  def after_sign_in_path_for(resource)
    clients_path
  end

  protected
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up) do |candidate_params|
      candidate_params.permit(:username, :date_of_birth, :name, :location, :category_id, :gender, :phone_number, :email, :password, :password_confirmation)
    end
  end
end

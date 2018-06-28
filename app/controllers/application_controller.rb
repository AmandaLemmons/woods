class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, if: :devise_controller?
  require 'dotenv'
  Dotenv.load
  require 'pry'



  def after_sign_in_path_for(resource)
    binding.pry
    if admin_user_signed_in?
      admin_root
    else
      clients_path
    end
  end

  protected
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up) do |candidate_params|
      candidate_params.permit(:username, :date_of_birth, :name, :location, :category_id, :gender, :phone_number, :email, :password, :password_confirmation, :gender)
    end
  end
end

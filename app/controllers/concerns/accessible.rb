module Accessible
  extend ActiveSupport::Concern
  # included do
  #   before_action :check_candidate
  # end

  protected
  def check_candidate
    if current_admin_user
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(admin_root_path) && return
    elsif check_candidate
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_candidate_root_path) && return
    end
  end
end

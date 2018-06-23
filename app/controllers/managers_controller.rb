class ManagersController < ApplicationController
  before_action :authenticate_manager!
  before_action :find_manager



  def find_manager
    @manager = Manager.find(params[:id])
  end
  def update
    if @manager.update(manager_params)
      redirect_to manager_path(id: current_manager.id)
    else
      render "Edit"
    end
  end


private
  def manager_params
        params.require(:manager).permit(:phone_number, :name, :company, :office, :street, :city, :zip, :email, :password, :password_confirmation, :franchise_area)
  end
end

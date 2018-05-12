class ClientsController < ApplicationController
  before_action :authenticate_manager!
  before_action :find_client, only:[:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @clients = Client.where(manager_id: current_manager.id).order("created_at DESC")
    else
      @clients = Client.where(manager_id: current_manager.id).where(category_id: @category_id).order("created_at DESC")
    end
  end

  def show
  end


  def new
    @client = Client.new
  end

  def create
    @client = Client.new(clients_params)
    @client.manager_id = current_manager.id
    if @client.save
      redirect_to clients_path
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @client.update(clients_params)
      @client.manager_id = current_manager.id
      redirect_to clients_path
    else
      render "Edit"
    end
  end

  def destroy
    @client.destroy
    redirect_to root_path
  end

  private

  def clients_params
    params.require(:client).permit(:company, :address, :phone_number, :email, :comments, :other, :contact_name, :status, :manager_id)
  end

  def find_client
    @client = Client.find(params[:id])
  end
end
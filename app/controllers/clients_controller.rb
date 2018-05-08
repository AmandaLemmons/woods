class ClientsController < ApplicationController

  before_action :find_client, only:[:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @clients = Client.all.order("created_at DESC")
    else
      @clients = Client.where(category_id: @category_id).order("created_at DESC")
    end
  end

  def show
  end


  def new
    @client = Client.new
  end

  def create
    @client = Client.new(clients_params)

    if @client.save
      redirect_to @client
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @client.update(clients_params)
      redirect_to @client
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
    params.require(:client).permit(:company, :address, :phone_number, :email, :comments, :other, :contact_name, :status)
  end

  def find_client
    @client = Client.find(params[:id])
  end
end

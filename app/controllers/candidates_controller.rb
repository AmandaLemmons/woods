class CandidatesController < ApplicationController
  before_action :authenticate_candidate!
  before_action :find_candidate

  def show
  end

  def edit
  end

  def update
    if @candidate.update(candidate_params)
      redirect_to candidate_path
    else
      render "Edit"
    end
  end

  private

  def find_candidate
    @candidate = Candidate.find(params[:id])
  end

  def candidate_params
        params.require(:candidate).permit(:email, :name, :date_of_birth, :category_id, :location, :username, :gender, :phone_number, :password, :confirmaton_password)
  end


end

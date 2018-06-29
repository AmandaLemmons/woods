class CandidatesController < ApplicationController
  before_action :authenticate_candidate!
  before_action :find_candidate
  # before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]


  def show
  end

  def edit
  end

  def update
    if @candidate.update(candidate_params)
      redirect_to candidate_path(id: current_candidate.id)
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

  # def set_s3_direct_post
  #   @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  # end


end

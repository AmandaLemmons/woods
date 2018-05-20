class ApplicantsController < ApplicationController
  before_action :authenticate_candidate!

  def new
    @job = Job.find(params[:id])
    @applicant = Applicant.new(job_id: @job.id, candidate_id: current_candidate.id)
    @resume = Resume.new
  end

  def create
    binding.pry
  end

  private
  def applicants_params
    params.require(:applicant).permit(:resume_id, :job_id, :candidate_id)
  end
end

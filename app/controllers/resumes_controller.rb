class ResumesController < ApplicationController
  before_action :authenticate_candidate!
  before_action :find_resume, only:[:edit, :update, :destroy]
  before_action :find_candidates_resumes, only:[:new, :edit]


  def index
    @resumes = Resume.where(candidate_id: current_candidate.id)

  end

  def new
     @resume = Resume.new
  end

  def apply
    @resume = Resume.new(job_id: params[:id], candidate_id: current_candidate.id)
  end


  def create
     @resume = Resume.new(resume_params)
     @resume.candidate_id = current_candidate.id

     if @resume.save
        redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
     else
        render "new"
     end
  end

  def edit
  end

  def update
    if @resume.update(resume_params)
      redirect_to @resume
    else
      render "Edit"
    end
  end

  def destroy
     @resume = Resume.find(params[:id])
     @resume.destroy
     redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end

  private
  def resume_params
    params.require(:resume).permit(:name, :attachment, :job_id, :candidate_id)
  end

  def find_resume
    @resume = Resume.find(params[:id])
  end

  def find_candidates_resumes
  end

end

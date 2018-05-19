class JobsController < ApplicationController
  before_action :find_job, only:[:job_details, :edit, :update, :destroy]

  def job_vacancies

    params[:search] ||= {}

      @jobs = Job.filter_jobs_by_options(filter_options).page params[:page]

      @job = Job.all

      # @category_id = Category.find_by(name: params[:category]).id
      # @jobs = Job.where(category_id: @category_id).order("created_at DESC")
    @categories = Category.all
    @salaries = JobSalary.all

  end

  def job_category
    params[:id] ||= {}

    @jobs = Job.all_by_category_id(params[:id])
    @category = Category.where(id: params[:id])
    
  end

  def job_details
  end

  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end


  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)

    if @job.save
      redirect_to @job
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @job.update(jobs_params)
      redirect_to @job
    else
      render "Edit"
    end
  end

  def destroy
    @job.destroy
    redirect_to root_path
  end

  private

  def jobs_params
    params.require(:job).permit(:title, :description, :location, :job_salary_id, :vacancy_status, :category_id, :company, :job_level_id, :latitude, :longitude)
  end

  def find_job
    @job = Job.find(params[:id])
  end

  def filter_options
    params.permit(search: [:category_id ])
  end
end

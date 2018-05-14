class JobsController < ApplicationController
  before_action :find_job, only:[:job_details, :edit, :update, :destroy]

  def job_vacancies
    if params[:category].blank?
      @jobs = Job.filter_jobs_by_options(filter_options)
      @job = Job.all
      params[:search] ||= {}

    else
      @category_id = Category.find_by(name: params[:category]).id
      @jobs = Job.where(category_id: @category_id).order("created_at DESC")
    end
    @categories = Category.all
    @salaries = JobSalary.all

  end

  def job_details
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
    params.require(:job).permit(:title, :description, :location, :job_salary_id, :vacancy_status, :category_id, :company, :job_level_id)
  end

  def find_job
    @job = Job.find(params[:id])
  end

  def filter_options
    params.permit(search: [:category_id ])
  end
end

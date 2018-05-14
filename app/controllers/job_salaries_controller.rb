class JobSalariesController < ApplicationController
  before_action :find_job_salary, only:[:show, :edit, :update, :destroy]

  def index
    @job_salaries = JobSalary.all.order("created_at DESC")
  end

  def show
  end


  def new
    @job_salaries = JobSalary.new
  end

  def create
    @job_salaries = JobSalary.new(job_salaries_params)

    if @JobSalary.save
      redirect_to @job_salaries
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @JobSalary.update(job_salaries_params)
      redirect_to @job_salaries
    else
      render "Edit"
    end
  end

  def destroy
    @JobSalary.destroy
    redirect_to root_path
  end

  private

  def job_salaries_params
    params.require(:job_salary).permit(:salary)
  end

  def find_testimonial
    @job_salary = JobSalary.find(params[:id])
  end

end

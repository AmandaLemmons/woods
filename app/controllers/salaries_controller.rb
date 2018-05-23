class SalariesController < ApplicationController
  before_action :find_job_salary, only:[:show, :edit, :update, :destroy]

  def index
    @job_salaries = Salary.all.order("created_at DESC")
  end

  def show
  end


  def new
    @job_salaries = Salary.new
  end

  def create
    @job_salaries = Salary.new(salaries_params)

    if @job_salaries.save
      redirect_to @job_salaries
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @job_salaries.update(salaries_params)
      redirect_to @job_salaries
    else
      render "Edit"
    end
  end

  def destroy
    @job_salaries.destroy
    redirect_to root_path
  end

  private

  def salaries_params
    params.require(:salary).permit(:salary)
  end

  def find_testimonial
    @job_salary = Salary.find(params[:id])
  end

end

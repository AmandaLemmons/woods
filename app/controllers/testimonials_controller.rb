class TestimonialsController < ApplicationController
  before_action :find_testimonial, only:[:show, :edit, :update, :destroy]

  def index
    @testimonials = Testimonial.all.order("created_at DESC")
  end

  def show
  end


  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonials_params)

    if @testimonial.save
      redirect_to @testimonial
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @testimonial.update(testimonials_params)
      redirect_to @testimonial
    else
      render "Edit"
    end
  end

  def destroy
    @testimonial.destroy
    redirect_to root_path
  end

  private

  def testimonals_params
    params.require(:testimonial).permit(:name, :position, :company, :client_since, :description)
  end

  def find_testimonial
    @testimonail = Testimonial.find(params[:id])
  end
end

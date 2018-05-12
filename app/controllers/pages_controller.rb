class PagesController < ApplicationController
  def home
    @categories = Category.all
    @testimonials = Testimonial.all
  end

  def manager_home
  end

  def about_us
  end

  def contact_us
  end



end

class PagesController < ApplicationController


  def home
    @categories = Category.all
    @testimonials = Testimonial.all
    @client = Client.new
  end

  def manager_home
  end

  def about_us
    @testimonials = Testimonial.all

  end

  def testimonials
    @testimonials = Testimonial.all
  end






end

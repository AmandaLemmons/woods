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

    @categories = Category.order('name ASC')
  end

  def testimonials
    @testimonials = Testimonial.all
  end

  def franchise
  end

  def meet_the_team
  end

  def privacy_policy
  end

  def ico
  end

  def rec
  end




end

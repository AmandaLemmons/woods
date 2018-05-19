class CandidatesController < ApplicationController
  before_action :authenticate_candidate!
  before_action :find_candidate

  def show
  end

  def edit 
  end

  private

  def find_candidate
    @candidate = Candidate.find(params[:id])
  end


end

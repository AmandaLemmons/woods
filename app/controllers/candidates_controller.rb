class CandidatesController < ApplicationController
  before_action :authenticate_candidate!


  def show
    @candidate = Candidate.find(params[:id])

  end




end

class CandidateController < ApplicationController
  skip_authorization_check
  
  def show_details
    @candidate = Candidate.all
  end
  
  def show
    @candidate = Candidate.find(params[:id])
  end
end

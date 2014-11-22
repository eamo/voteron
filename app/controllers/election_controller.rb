class ElectionController < ApplicationController
  skip_authorization_check
  
  def index
    @elections = Election.all
    
  end

  def show_candidate_list
    @election = Election.find(params[:id])
    @candidates = Candidate.where(:election_id => 1)
  end
end

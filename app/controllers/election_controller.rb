class ElectionController < ApplicationController
  skip_authorization_check
  
  def index
    @elections = Election.all
    
  end

  def show_candidate_list
    @election = Election.find(params[:id])
    @candidates = Candidate.where(:election_id => 1)
    
    categories = params[:search].split(';')
    output = []
    @candidates.each do |x|
      output << (x.standpoints.where(name: categories)).size
      p output
      p x.name
    end
    
  end
end

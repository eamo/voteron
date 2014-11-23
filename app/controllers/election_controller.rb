class ElectionController < ApplicationController
  skip_authorization_check
  
  def index
    @elections = Election.all
    
  end

  def show_candidate_list
    @election = Election.find(params[:id])
    @candidates = Candidate.where(:election_id => 1)
    @output = {}
    
    if (params.has_key?(:search))
      categories = params[:search].split(';')
      
      total_params = categories.size
      @candidates.each do |x|
        @output[x.id] = (100*(x.standpoints.where(name: categories)).size / total_params)
      end
      @output = Hash[@output.sort_by{|k,v| -v}] 
    end
    
  end
end

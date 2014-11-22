class Election < ActiveRecord::Base
	has_many :candidates
	has_many :election_outcomes
  
end

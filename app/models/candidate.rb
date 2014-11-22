class Candidate < ActiveRecord::Base
  has_and_belongs_to_many :standpoints
  
  has_many :user_supports
  has_many :users, through: :user_supports 
end

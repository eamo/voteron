class UserSupport < ActiveRecord::Base
  belongs_to :user
  belongs_to :candidate
end

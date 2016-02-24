class Candidate < ActiveRecord::Base
  has_many :votes, through: :voters
end

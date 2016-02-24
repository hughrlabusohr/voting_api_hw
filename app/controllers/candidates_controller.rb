class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    id = params["id"]
    render json: Candidate.find(id)
  end

  def create
    Candidate.create
  end
end

class VotesController < ApplicationController

  p "!"*55
  p params

  def create
    # @vote = Vote.new(vote_params)
    @vote = Vote.new(params[:votes])
      p "*"*55
      p vote_params
      p "*"*55
    if @vote.save
      redirect_to movie_path(@movie, @vote)
    else
      p @vote
      redirect_to movie_path(@movie, @vote)
    end
  end

    def vote_params
      params.require(:votes).permit(:user_id, :up_vote_value, :down_vote_value, :review_id)
      p "*"*55
      p params
      p "*"*55
    end


  def vote
    @vote = Vote.new(params[:votes])
    # user_id, review_id, up_vote_value, down_vote_value
    if @vote.save
      redirect_to movie_path(@movie, @vote)
    else
      p @vote
      redirect_to movie_path(@movie, @vote)
    end
  end

end

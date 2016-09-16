class ReviewsController < ApplicationController

  def new
    # before_action :authenticate_user!
    @review = Review.new
    @movie = Movie.find(params[:movie_id])

  end

  def create
    # before_action :authenticate_user!
    @movie = Movie.find(params[:movie_id])
    # this cromulent business is temporary; we hard-coded a user ID and inserted
    # it into the hash that is passed into the create
    review_params
    cromulent = review_params
    cromulent[:user_id] = 1
      p "*"*55
    p cromulent
    @review = @movie.reviews.create(cromulent)
    p "*"*55
    p @review
    p @movie
    p "*"*55

    if @review.save
      redirect_to movie_path(@movie)
      # redirect_to movie_review_path(@movie, @review)
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
  end

  def edit
    # before_action :authenticate_user!
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
  end

  def update
    # before_action :authenticate_user!
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to movie_review_path(@movie, @review)
    else
      render :edit
    end
  end

  def destroy
    # before_action :authenticate_user!
    @review = Review.find(params[:id])
    @movie = Movie.find(@review.movie_id)

    @review.destroy
    redirect_to movie_path(@movie)
  end

  def review_params
    params.require(:review).permit(:star_rating, :text, :movie_id)
  end

  def vote
    @vote = Vote.new(params[:vote])
    # user_id, review_id, up_vote_value, down_vote_value
    if @vote.save
      redirect_to movie_path(@movie, @vote)
    else
      p @vote
      redirect_to movie_path(@movie, @vote)
    end
  end

end

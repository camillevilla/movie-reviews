class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @movie = Movie.find(params[:movie_id])

  end

  def create
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
      redirect_to movie_review_path(@movie, @review)
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to movie_review_path(@movie, @review)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @movie = Movie.find(@review.movie_id)

    @review.destroy
    redirect_to movie_path(@movie)
  end

  def review_params
    params.require(:review).permit(:star_rating, :text, :movie_id)
  end

end

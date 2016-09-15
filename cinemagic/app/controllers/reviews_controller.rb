class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @movie = Movie.find(params[:movie_id])
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create(review_params)


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
    params.require(:review).permit(:star_rating, :text, :movie_id, :user_id)
  end

end

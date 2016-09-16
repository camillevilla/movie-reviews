require 'themoviedb'
class MoviesController < ApplicationController
  def welcome
    @movies = Movie.all
    @movie = Movie.new
    @genres = Genre.all
    @result = Tmdb::Movie.find("Batman")

    # @search = Tmdb::Search.new
    # @search.resource('movie')
    # @search.query(@movie)
    # @result = @search.fetch

  end


  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :director)
  end
end

class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)

    if @genre.save
      redirect_to genre_path(@genre)
    else
      render :new
    end
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = @genre.movies
  end

  def destroy
    @genre = Genre.find(params[:id])

    @genre.destroy
    redirect_to genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(:title, :year, :director)
  end
end

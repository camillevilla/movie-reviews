class CommentsController < ApplicationController


  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:review_id])
    p comment_params
    p "*"*12
    p "look for comment params"
    p @comment

    # comment_params
    # cromulent = comment_params
    # cromulent[:user_id] = 1
    # cromulent[:movie_id] = 1

      # @movie = @comment.review.movie
    # @comment = @review.comments.create
    # p @movie
    # p "@"*33
    redirect_to movie_path(@movie)
    if @comment.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy
    redirect_to comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :review_id, :movie_id)
  end
end


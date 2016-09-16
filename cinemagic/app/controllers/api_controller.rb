require 'themoviedb'

class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create 
    p params
    # p params[:movie]
    p @search = Tmdb::Movie.find(params[:movie])
    # @search.each do |result| 
    #   p result.original_title
    # end 
    respond_to do |format|
      format.html { redirect_to movies_url }
      format.json{ @search.original_title }
    end 
  end


end

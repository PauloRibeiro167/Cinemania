class MoviesController < ApplicationController
  def index
    @movies = Movie.list_releases
    @movies ||= []
  end
end

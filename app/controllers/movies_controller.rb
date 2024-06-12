class MoviesController < ApplicationController
  def index
    results = Movie.list_releases
    @movies = results
    @movies ||= []
  end

  def search
    results = Movie.search_movie(movie_params[:query])
    @movies = Kaminari.paginate_array(results['results']).page(params[:page]).per(10)
    @movies ||= []
    render :result
  end

  private

  def movie_params
    params.permit(:query)
  end
end

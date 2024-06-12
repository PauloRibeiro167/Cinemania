require 'httparty'
require 'dotenv'
Dotenv.load

class Movie
  BASE_URL = 'https://api.themoviedb.org/3/movie'
  API_KEY = ENV['TMDB_API_KEY']

  def self.list_releases
    url = "#{BASE_URL}/now_playing?api_key=#{API_KEY}&language=pt-BR"
    respond = HTTParty.get(url)
    response = JSON.parse(respond.body)
  end

  def self.search_movie(query)
    url = "https://api.themoviedb.org/3/search/movie?api_key=#{API_KEY}&language=pt-BR&query=#{query}&include_adult=false&page=1"
    response = HTTParty.get(url)
    JSON.parse(response.body)
  end
end

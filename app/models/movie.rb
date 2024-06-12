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
end

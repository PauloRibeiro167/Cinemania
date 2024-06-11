require 'httparty'
class Movie
  BASE_URL = 'http://www.omdbapi.com/?apikey'
  API_KEY = 'MY_API_KEY'

  def initialize; end

  def self.search_by_title(title)
    response = HTTParty.get("#{BASE_URL}=#{API_KEY}&t=#{title}")
    JSON.parse(response.body)
  end

  def self.search_by_id(id)
    response = HTTParty.get("#{BASE_URL}=#{API_KEY}&i=#{id}")
    JSON.parse(response.body)
  end
end

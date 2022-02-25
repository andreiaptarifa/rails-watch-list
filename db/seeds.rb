# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

url = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>"
page = URI.open(url).read
movies = JSON.parse(page)
results = movies['results']
results.each do |result|
  movie = Movie.new(
    title: result["original_title"],
    overview: result["overview"],
    poster_url: result["poster_path"],
    rating: result["vote_average"]
  )
  movie.save
end

# p movies
# return movies

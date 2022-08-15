# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts 'Destroying current database...'

# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

puts 'Creating new movie database via API...'

response['results'].each do |movie_hash|
  puts
  p movie_hash
  Movie.create!(
    title: movie_hash['title'],
    overview: movie_hash['overview'],
    poster_url: movie_hash['poster_path'],
    rating: movie_hash['vote_average']
  )

end

puts 'New database created!'

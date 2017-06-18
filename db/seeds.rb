# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor_ford = Actor.create!(name: "Harrison Ford", bio: "Some long biography about this actor")
actress_fisher = Actor.create!(name: "Carrie Fisher", bio: "Some long biography about this actress")
actor_hamill = Actor.create!(name: "Mark Hamill", bio: "Some long biography about this actor")

movie = Movie.create!(title: "Star Wars Episode IV", year: 1977, summary: "A New Hope")
movie.actors << actor_ford
movie.actors << actress_fisher
movie.actors << actor_hamill

movie = Movie.create!(title: "Star Wars Episode V", year: 1980, summary: "The Empire Strikes Back")
movie.actors << actor_ford
movie.actors << actress_fisher
movie.actors << actor_hamill

movie = Movie.create!(title: "Indiana Jones", year: 1981, summary: "Raiders of the Lost Ark")
movie.actors << actor_ford

movie = Movie.create!(title: "Star Wars Episode VI", year: 1983, summary: "Return of Jedi")
movie.actors << actor_ford
movie.actors << actress_fisher
movie.actors << actor_hamill
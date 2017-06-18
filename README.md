# Rails with GraphQL

A simple case study of how to use GraphQL with Ruby on Rails

## Libraries used
- Ruby v2.4.1
- Rails v5.1.1
- GraphQL v1.6.3

## Rails base structure
The project base code was created with the following command:
```sh
$ rails new rails-graphql --api
```
The _- -api_ option was used to create a lightweight version of the full-stack framework, containing only what I need start to build a REST API.

## Running the code
1. Clone this repo
2. At rails-graphql folder execute ```bundle install``` to install all dependencies
3. Execute all migrations in SQLite3 with ```rake db:migrate```
4. Put some data in SQLite3 with ```rake db:seed``` (see db/seeds.rb)
5. Start the server with ```rails s```
6. Using the terminal, query it with cURL:
```sh
curl -XGET http://localhost:3000/movies -d "query={
  movie(id: 1) {
    title,
    year,
    actors {
      name
    }
  }
}"
```
#### Using IRB to add more data
1. In another terminal, execute the IRB console with ```bundle exec rails c```
2. Add some data to Movie and Actor, then place Actor inside Movie
    - ```movie = Movie.create!(title: "Indiana Jones", year: 1984, summary: "Temple of Doom")```
    - ```actor = Actor.create!(name: "Harrison Ford", bio: "Some long biography about this actor")```
    - ```movie.actors << actor```
3. Exit IRB and query it using cURL:
```sh
curl -XGET http://localhost:3000/movies -d "query={
  movie(id: 5) {
    title,
    year,
    actors {
      name
    }
  }
}"
```

## Other queries
You could also query about Actors (by ID) and Movies (by year) -- see app/types/query_type.rb for more.

# TO DO LIST
- Create some tests
- Create a ERB interface
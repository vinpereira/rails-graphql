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
3. Start the server with ```rails s```
4. In another terminal, execute the IRB console with ```bundle exec rails c```
5. Add some data to Movie and Actor, then place Actor inside Movie
    - ```movie = Movie.create!(title: "Indiana Jones", year: 1981, summary: "Raiders of the Lost Ark")```
    - ```actor = Actor.create!(name: "Harrison Ford", bio: "Some long biography about this actor")```
    - ```movie.actors << actor```
6. Exit IRB and query it using cURL:
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

You could also query about Actors (by ID) and Movies (by year).

# TO DO LIST
- Create some tests
- Create a ERB interface
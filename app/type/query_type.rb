QueryType = GraphQL::ObjectType.define do
    name "Query"
    description "The query root for this GraphQL schema"

    # Find Movie by ID
    field :movie do
        type MovieType
        argument :id, !types.ID

        resolve -> (obj, args, ctx) {
            Movie.find(args[:id])
        }
    end

    # Find Actor by ID
    field :actor do
        type ActorType
        argument :id, !types.ID

        resolve -> (obj, args, ctx) {
            Actor.find(args[:id])
        }
    end

    # Find Movies by year
    field :movies do
        type types[MovieType]
        argument :year, types.Int
        
        resolve -> (obj, args, ctx) {
            if args[:year].present?
                Movie.where(year: args[:year])
            else
                Movie.all
            end
        }
    end
end
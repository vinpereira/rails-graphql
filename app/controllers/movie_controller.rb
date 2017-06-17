class MoviesController < ApplicationController
    # GET /movies
    def query
        result = Schema.execute params[:query]
        render json: result
    end
end
class WalkersController < ApplicationController
    def index
        @walkers = Walker.all
        render json: @walkers
    end

    def create
        walker = Walker.new(
          imgUrl: params[:imgUrl],
          name: params[:name],
          email: params[:email],
          phone: params[:phone],
          rate: params[:rate],
          rating: params[:rating],
          password: params[:password],
        )
    
        if walker.save
          token = encode_token(walker.id)
          render json: {walker: walker, token: token}
        else
          render json: {errors: walker.errors.full_messages}
        end
    end
end





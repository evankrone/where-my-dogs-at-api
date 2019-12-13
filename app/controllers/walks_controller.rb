class WalksController < ApplicationController
    def index
        @walks = Walk.all
        render json: @walks
    end

    def show
        @walk = Walk.find(params[:id])
        render json: @walk
    end

    def create
        walk = Walk.new(
          owner_id: params[:owner_id],
          walker_id: params[:walker_id]
        )
        if walk.save
            render json: {walk: walk}
        else
            render json: {errors: walk.errors.full_messages}
        end
    end

    def update
        walk = Walk.find(params[:id])
        walk.update(walk_params)
    end

    private
    
    def walk_params
        params.require(:walk).permit(:walk_id, :walker_id, :owner_id)
    end

end

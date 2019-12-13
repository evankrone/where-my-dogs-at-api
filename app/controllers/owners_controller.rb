class OwnersController < ApplicationController
   
    def index
        @owners = Owner.all
        render json: @owners
    end


    def create
        owner = Owner.new(
          name: params[:name],
          dogname: params[:dogname],
          email: params[:email],
          address: params[:address],
          city: params[:city],
          addressstate: params[:addressstate],
          zipcode: params[:zipcode],
          password: params[:password],
        )
    
        if owner.save
          token = encode_token(owner.id)
          render json: {owner: owner, token: token}
        else
          render json: {errors: owner.errors.full_messages}
        end
    end
end



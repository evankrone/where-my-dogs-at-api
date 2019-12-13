class AuthController < ApplicationController
  
    def ownerlogin
        owner = Owner.find_by(email: params[:email])

        if owner && owner.authenticate(params[:password])
            token = encode_token(owner.id)
            render json: {owner: owner, token: token}
        else
            render json: {errors: "Email or password incorrect."}
        end
    end

    def walkerlogin
        walker = Waler.find_by(email: params[:email])

        if walker && walker.authenticate(params[:password])
            token = encode_token(walker.id)
            render json: {walker: walker, token: token}
        else
            render json: {errors: "Email or password incorrect."}
        end
    end

    def auto_login   
        if session_user
            render json: {owner: session_user}
        else
            render json: {errors: "User not found. Please login again. "}
        end
    end
end
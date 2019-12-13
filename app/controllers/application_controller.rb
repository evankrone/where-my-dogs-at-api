class ApplicationController < ActionController::API


    def encode_token(id)
        JWT.encode({owner_id: id}, "secret_code")
      end
    
    def get_auth_header
        request.headers["Authorization"]
    end

    def decoded_token
        begin
            JWT.decode(get_auth_header, "secret_code")[0]["owner_id"]
        rescue
            nil
        end
    end

    def session_user
        Owner.find_by(id: decoded_token)
    end

    def logged_in?
        !!session_user
    end

end

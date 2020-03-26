class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'my_s3r3t')
    end

    def auth_header
        request.headers['Authorization']
      end
    
      def decoded_token
        if auth_header
          token = auth_header.split(' ')[1]
          begin
            JWT.decode(token, 'my_s3r3t', true, algorithm: 'HS256')
          rescue JWT::DecodeError
            nil
          end
        end
      end
    
      def logged_in_director
        # the user who is holding that token
        if decoded_token
          director_id = decoded_token[0]['director_id']
          @director = Director.find_by(id: director_id)
        end
      end
    
      def logged_in?
        !!logged_in_director
      end
    
      def authorized
        render json: { error: 'Please log in' }, status: :unauthorized unless logged_in?
      end
    
    
end

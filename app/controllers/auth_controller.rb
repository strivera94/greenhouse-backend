class AuthController < ApplicationController
    def login
        user = User.find_by(email: login_params[:email])
        if user && user.authenticate(login_params[:password])
            token = JWT.encode({user_id: user.id}, hmac_secret, 'HS256')
        render json: {user: user, token: token}
        elsif user && !user.authenticate(login_params[:password])
        render json: {errors: 'Invalid password'}, status: :unauthorized
        elsif !user
        render json: {errors: 'Invalid email, if you have not signed up, please do so before logging in'}
        else
        render json: {errors: 'Something went wrong'}
        end
    end

    def persist
        if request.headers['Authorization']
            encoded_token = request.headers['Authorization'].split(' ')[1]
            token = JWT.decode(encoded_token, hmac_secret)
            user_id = token[0]['user_id']
            user = User.find(user_id)
            render json: user
        end
    end

    private 

    def login_params
        params.permit(:email, :password)
    end
end
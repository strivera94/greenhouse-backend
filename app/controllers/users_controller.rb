class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            user = user
            token = JWT.encode({user_id: user.id}, hmac_secret, 'HS256')
            render json: {user: user, token: token}
        # elsif !user.valid?
        #     render json: {errors: 'Please fill out all fields'}
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private

    def user_params
        params.permit( :email, :password, :current_order )
    end
end

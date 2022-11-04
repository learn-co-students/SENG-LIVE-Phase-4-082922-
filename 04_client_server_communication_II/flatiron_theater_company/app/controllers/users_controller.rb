class UsersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    def show
        user = User.find(params[:id])
        render json: user, status: :ok
    end 

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end 

    private

    def user_params
        params.permit(:name, :email)
    end 

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors},status: :unprocessable_entity
    end 
end

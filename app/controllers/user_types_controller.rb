class UserTypesController < ApplicationController
    def index
        @user_types = UserType.all
        
        render json: @user_types
    end

    def show
        @user_type = UserType.find(params[:id])

        render json: @user_type
    end

    def create
        @user_type = UserType.create(
            user_type: params[:user_type]
        )

        render json: @user_type
    end

    def update
        @user_type = UserType.find(params[:id])
        @user_type.update(
            user_type: params[:user_type]
        )

        render json: @user_type
    end

    def destroy
        @user_type = UserType.find(params[:id])
        @user_type.destroy

        render json:"#{@user_type} has been delete"
    end
end

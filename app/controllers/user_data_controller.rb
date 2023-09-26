class UserDataController < ApplicationController
    def index
        @user_data = UserData.all
        
        render json: @user_data
    end

    def show
        @user_datum = UserData.find(params[:id])

        render json: @user_datum
    end

    def create
       
        @user_datum = UserData.create(
            name: params[:name],
            age: params[:age],
            user_type: params[:user_type]
        )

        render json: @user_datum
    end

    def update
        @user_datum = UserData.find(params[:id])
        @user_datum.update(
            name: params[:name],
            age: params[:age],
            user_type: params[:user_type]
        )

        render json: @user_datum
    end

    def destroy
        @user_datum = UserData.find(params[:id])
        @user_datum.destroy

        render json:"#{@user_datum.name} has been delete"
    end
end

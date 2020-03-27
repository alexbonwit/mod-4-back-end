class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: :notes
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user, include: :notes
    end

    def create
        user = User.create(username: params[:username], logged_in: true)
        render json: user, include: :notes
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(logged_in: params[:logged_in])
        render json: user
    end
end

class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: notes, include: :user
    end

    def show
        note = Note.find_by(id: params[:id])
        render json: note, include: :tags
    end

    def create
        note = Note.create(title: params[:title], body: params[:body], user_id: params[:user_id])
        render json: note, include: :user
    end

    def update
        note = Note.find_by(id: params[:id])
        note.update(title: params[:title], body: params[:body])
        render json: note
    end
end

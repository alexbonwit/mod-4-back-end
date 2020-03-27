class NoteTagsController < ApplicationController
    def index
        note_tags = NoteTag.all
        render json: note_tags, include: [:note, :tag]
    end

    def show
        note_tag = NoteTag.find_by(id: params[:id])
        render json: note_tag, include: [:note, :tag]
    end

    def create
        note_tag = NoteTag.create(note_id: params[:note_id], tag_id: params[:tag_id])
        render json: note_tag, include: [:note, :tag]
    end
end

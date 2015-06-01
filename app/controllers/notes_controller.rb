class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new
    @note.event_id = params[:event_id]
    @note.note_body = params[:note_body]

    if @note.save
      redirect_to "/notes", :notice => "Note created successfully."
    else
      render 'new'
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    @note.event_id = params[:event_id]
    @note.note_body = params[:note_body]

    if @note.save
      redirect_to "/notes", :notice => "Note updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @note = Note.find(params[:id])

    @note.destroy

    redirect_to "/notes", :notice => "Note deleted."
  end
end

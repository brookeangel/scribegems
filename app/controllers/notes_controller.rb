class NotesController < ApplicationController
  def index
    @notes = Note.order("created_at DESC")
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      flash[:success] = ["Hahaha I can't believe #{@note.scribe_name} wrote that!"]
    else
      flash[:errors] = @note.errors.full_messages
    end

    redirect_to :back
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to :back
  end

  private

  def note_params
    params.require(:note).permit(:body, :ta_name, :scribe_name)
  end
end

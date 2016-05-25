class NotesController < ApplicationController
  before_action :set_note, only: [:show, :destroy]

  def index
    render json: Note.all.to_json
  end

  # def show
  #   render json: @topic.to_json
  # end


  def new
    @note = Note.new
  end

  def create
    @note = Topic.new(topic_params)

    if @note.save
      # using jbuilder views
      render "create.json.jbuilder", status: :created
    else
      render json: { errors: @note.errors.full_messages },
             status: :unprocessable_entity
    end

  end

  # def destroy
  #   @topic.destroy
  #   respond_to do |format|
  #     format.html do
  #         head 200, content_type: 'text/plain'
  #     end
  #     format.json { render json: @topic.to_json }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit!
    end

end
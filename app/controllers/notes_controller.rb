class NotesController < ApplicationController
  # before_action :set_topic, only: [:show, :destroy]

  def index
    render json: Note.all.to_json
  end

  # def show
  #   render json: @topic.to_json
  # end


  # def new
  #   @topic = Topic.new
  # end

  # def create
  #   @topic = Topic.new(topic_params)

  #   if @topic.save
  #     render "create.json.jbuilder", status: :created

  #     AdminTopic.create({
  #       :admin_id => params[:admin_id],
  #       :topic_id => @topic.id
  #     })

  #   else
  #     render json: { errors: @topic.errors.full_messages },
  #            status: :unprocessable_entity
  #   end

  # end

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
    # def set_topic
    #   @topic = Topic.find(params[:id])
    # end

    # # Never trust parameters from the scary internet, only allow the white list through.
    # def topic_params
    #   params.require(:topic).permit!
    # end

end
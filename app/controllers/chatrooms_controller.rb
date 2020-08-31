class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.new
    authorize @chatroom

    if @chatroom.save
      Participant.create(user: current_user, chatroom: @chatroom)
      Participant.create(user_id: params[:chatroom][:user_id].to_i, chatroom: @chatroom)
      redirect_to chatroom_path(@chatroom)
    end
  end
end

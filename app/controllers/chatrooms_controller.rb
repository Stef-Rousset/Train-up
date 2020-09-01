class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @interlocutor = @chatroom.participants.where.not(user: current_user).first.user
    @unread_msg = @chatroom.messages.where(user: @interlocutor)
    @unread_msg.each do |msg|
      msg.read = true
      msg.save
    end
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

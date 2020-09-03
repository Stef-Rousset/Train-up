class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom).joins(:participants).where(participants: { user: current_user })
    @interlocutor = @chatrooms.first.participants.where.not(user: current_user).first.user
    # @chatrooms = @mychatrooms.second_to_last
    @unread_msg = @chatrooms.first.messages.where(user: @interlocutor)
    @unread_msg.each do |msg|
      msg.read = true
      msg.save
    end
    @message = Message.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    # @skill = @chatroom.messages.participants
    participants = @chatroom.participants.map do |part|
      User.find(part.user_id) 
    end
    coach = participants.reject{|user| user.skills.empty? }
    @skill = coach[0].skills.first.id

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

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom = @chatroom.destroy
    redirect_to chatrooms_path(@chatroom)
  end
end

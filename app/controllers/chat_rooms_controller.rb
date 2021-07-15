class ChatRoomsController < ApplicationController
  before_action :set_room, only: %i[ show edit update destroy ]
  def chat_user
    user = User.find(params[:user_id])
    if current_user.chat_room(user)
      redirect_to chat_rooms_path
    else
      ChatRoom.create(users: [current_user, user])
      redirect_to chat_rooms_path
    end
  end
  def show
    @rooms=current_user.chat_rooms
    render 'index'
  end
  def index
    @rooms=current_user.chat_rooms
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_room
    @room = ChatRoom.find(params[:id])
  end
end

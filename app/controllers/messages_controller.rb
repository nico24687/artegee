class MessagesController < ApplicationController
  #need to deal with security 
  skip_before_action :verify_authenticity_token 

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.build(message_params)
    @message.user_id = current_user.id
    @message.save!

    @path = conversation_path(@conversation)

    respond_to do |format|
      format.js
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end

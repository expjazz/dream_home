# frozen_string_literal: true

class InboxMessagesController < ApplicationController
  def create
    byebug
    @message = current_user.messages_sent.build(inbox_params)
    if @message.save
      flash[:notice] = 'Your message was sent. Now just wait for a response'
      redirect_to root_path
    end
  end

  private

  def inbox_params
    params.require(:inbox_message).permit(:body, :receiver_id, :property_id)
  end
end

class MessagesController < ApplicationController

def index
@messages = Message.all
end


    def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to  messages_path    
    # msg_params = params.require(:message).permit(:message, :post)
    end
    
    def create
        msg_params = params.require(:message).permit(:message, :post)
        post_id = msg_params[:post]
        post = Post.find(post_id)
        sender = current_user
        receiver = post.user
        @new_message = post.messages.new(message: msg_params[:message], sender: sender, receiver: receiver)
       @new_message.save
       p @new_message
       redirect_to messages_path, notice: "Your message has been submitted"
    end
end

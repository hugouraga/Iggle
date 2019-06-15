class ConversationsController < ApplicationController
    

    def index
        @professional_users = ProfessionalUser.all
        @normal_users = NormalUser.all
        @conversations = Conversation.all
    end

    def create
        if Conversation.between(params[:sender_id], params[:recipient_id]).present?
            @conversation = Conversation.between(params[:sender_id], params[:recipient_id])
        else
            @conversation = Conversation.create!(conversation_params)
        end
        redirect_to conversation_messages_path(@conversation)
    end

    private
    def conversation_params
        params.permit(:sender_id, :recipient_id)
    end
end
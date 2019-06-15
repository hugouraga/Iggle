class Message < ActiveRecord::Base    
    belongs_to :conversation
    belongs_to :normal_user
    belongs_to :professional_user
    
    validates_presence_of :body, :conversation_id, :normal_user_id, :professional_user_id
    
    def message_time
        created_at.strftime("%d/%m/%y às %l:%M %p")
    end
end
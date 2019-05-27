class ApplicationController < ActionController::Base
    
    #include SessionsHelper
    include LoginClienteHelper
    include LoginProfissionalHelper
    private
    def require_logged_in_user
      unless user_signed_in?
        flash[:danger] = 'Área restrita. Por favor, realize o login.'
        redirect_to entrar_url
      end
    end
end

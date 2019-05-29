class ApplicationController < ActionController::Base
    
    #include SessionsHelper
    include LoginClienteHelper
    include LoginProfissionalHelper
    private
    def require_logged_in_professional_user
      unless professional_user_signed_in?
        flash[:danger] = 'Área restrita à profissionais. Por favor, realize o login.'
        redirect_to entrar_url
      end
    end
    def require_logged_in_normal_user
      unless normal_user_signed_in?
        flash[:danger] = 'Área restrita à clientes. Por favor, realize o login.'
        redirect_to entrar_url
      end
    end
end

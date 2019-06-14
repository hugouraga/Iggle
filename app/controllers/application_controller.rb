class ApplicationController < ActionController::Base

    #include SessionsHelper
    include LoginClienteHelper
    include LoginProfissionalHelper
    private
    def require_logged_in_professional_user
      unless professional_user_signed_in?
        #flash[:danger] = 'Área restrita à profissionais. Por favor, realize o login em uma conta profissional.'
        redirect_to login_profissional_path
      end
    end
    def require_logged_in_normal_user
      unless normal_user_signed_in?
        #flash[:danger] = 'Área restrita à clientes. Por favor, realize o login em uma conta cliente.'
        redirect_to login_cliente_path
      end
    end
end

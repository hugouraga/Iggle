class LoginProfissionalController < ApplicationController
    def new
    end
    
    def create
        professional = ProfessionalUser.find_by(email: params[:session][:email].downcase)
        if professional && professional.authenticate(params[:session][:password])
        sign_in(professional)
        redirect_to professional_user_path(professional)
        else 
        flash.now[:danger] = 'Email ou senha inválidos'
        render 'new'
        end
    end
    
    def destroy 
        sing_out
        flash[:success] = 'logout realizado com sucesso!'
        redirect_to entrar_path
    end
    
end

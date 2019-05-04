class LoginClienteController < ApplicationController
    def new
    end

    def create
        user = NormalUser.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
        sign_in(user)
        redirect_to normal_user_path(user)
        else
        flash.now[:danger] = 'Email ou senha inválidos'
        render 'new'
        end
    end

    def destroy
        sign_out
        flash[:success] = 'logout realizado com sucesso!'
        redirect_to entrar_path
    end

end

class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      if professional_user_signed_in?
        redirect_to login_profissional_path
        flash[:success] = 'Obrigada pela sua mensagem! Nós retornaremos em breve'
      elsif normal_user_signed_in?
        redirect_to login_cliente_path
        flash[:success] = 'Obrigada pela sua mensagem! Nós retornaremos em breve'
      end
    else
      if professional_user_signed_in?
        redirect_to login_profissional_path
        flash[:danger] = 'Preencha os campos corretamente '
      elsif normal_user_signed_in?
        redirect_to login_cliente_path
        flash[:danger] = 'Preencha os campos corretamente '
      end
    end
  end
end

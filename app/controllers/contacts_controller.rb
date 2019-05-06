class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:success] = 'Obrigada pela sua mensagem! Nós retornaremos em breve'
    else
      flash.now[:error] = 'Preencha os campos corretamente '
    end
  end
end

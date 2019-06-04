require 'rails_helper'

describe NormalUser do
  it "é válido quando contém o primeiro nome, uma senha,  um email e um número de telefone" do
    user = NormalUser.new(name: 'Bruce', password: 'a-z1111', email: 'bruce@ironmaiden.com', phone: 988888888)
    expect(user).to be_valid
  end
  it "é inválido sem o nome" do
    user = NormalUser.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("não pode ser em branco.")
  end
  it "é inválido caso já exista um e-mail igual" do
    user = NormalUser.create( name: 'Steve', password: 'a-z1111', email: 'contato@ironmaiden.com', phone: 977777777)
    user = NormalUser.new( name: 'Bruce', password: 'a-b3333', email: 'contato@ironmaiden.com', phone: 966666666 )
    user.valid?
    expect(user.errors[:email]).to include('já cadastrado.')
 end
end

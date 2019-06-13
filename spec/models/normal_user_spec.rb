require 'rails_helper'

describe NormalUser do

  it "é válido quando contém o primeiro nome, uma senha, um email e um número de telefone" do
    user = build(:normal_user)
    expect(user).to be_valid
  end

  it "é inválido sem o nome" do
    user = build(:normal_user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("não pode ser em branco.")
  end

  it "o nome tem que ter até 50 caracteres" do
    user = build(:normal_user, name: "luanaluanaluanaluanaluanaluanaluanaluanaluanaluanal")
    user.valid?
    expect(user.errors[:name]).to include("muito grande. Máximo de 50 caracteres.")
  end

  it "é inválido sem o email" do
    user = build(:normal_user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("inválido.")
  end

  it "é inválido caso já exista um e-mail igual" do
    email = FFaker::Internet.email
    user = NormalUser.create( name: FFaker::Name.name, password: FFaker::Internet.password(min_length = 6), email: email, phone: 977777777)
    user = NormalUser.new(name: FFaker::Name.name, password: FFaker::Internet.password(min_length = 6), email: email, phone: 977777777)
    user.valid?
 end

  it "é inválido sem a senha" do
    user = build(:normal_user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("não pode ser em branco.")
  end

  it "é inválido se a senha tem menos 6 caracteres" do
    user = build(:normal_user, password: FFaker::Internet.password(min_length = 2, max_length = 5))
    user.valid?
    expect(user.errors[:password]).to include("muito pequena. Mínimo de 6 caracteres.")
  end

  it "é inválido sem um número" do
    user = build(:normal_user, phone: nil)
    user.valid?
    expect(user.errors[:phone]).to include("não pode ser em branco.")
  end
end

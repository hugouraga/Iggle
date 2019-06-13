require 'rails_helper'

describe Address do
  it "é válido quando contém o nome da rua, o número, o complemento, o CEP, o bairro, a cidade e o estado" do
    address = build(:address)
    expect(address).to be_valid
  end

  it "é inválido sem o nome da rua" do
    address = build(:address, name: nil)
    address.valid?
    expect(address.errors[:name]).to include()
  end

  it "é inválido sem o número" do
    address = build(:address, number: nil)
    address.valid?
    expect(address.errors[:number]).to include("não pode ser em branco.")
  end

  it "é inválido sem o CEP" do
    address = build(:address, postal_code: nil)
    address.valid?
    expect(address.errors[:postal_code]).to include("não pode ser em branco.")
  end

  it "é inválido sem o bairro" do
    address = build(:address, district: nil)
    address.valid?
    expect(address.errors[:district]).to include("não pode ser em branco.")
  end

  it "é inválido sem a cidade" do
    address = build(:address, city: nil)
    address.valid?
    expect(address.errors[:city]).to include("não pode ser em branco.")
  end

  it "é inválido sem a cidade" do
    address = build(:address, state: nil)
    address.valid?
    expect(address.errors[:state]).to include("não pode ser em branco.")
  end

  it "complemento não é obrigatório" do
    address = build(:address, description: nil)
    address.valid?
    expect(address.errors[:state]).to include()
  end
end

require 'rails_helper'

describe Service do
  it "é válido quando contém o nome do serviço, uma descrição, um valor, uma duração e tem uma agenda associada" do
    service = build(:service)
    expect(service).to be_valid
  end

  it "é inválido sem o nome do serviço" do
    service = build(:service, service: nil)
    service.valid?
    expect(user.errors[:service]).to include("não pode ser em branco.")
  end

  it "o nome do serviço tem que ter até 50 caracteres" do
    service = build(:service, service: "nutrinutrinutrinutrinutrinutrinutrinutrinutrinutrinutri")
    service.valid?
    expect(user.errors[:service]).to include("muito grande. Máximo de 50 caracteres.")
  end

  it "é inválido sem a descrição do serviço" do
    service = build(:service, description: nil)
    service.valid?
    expect(user.errors[:description]).to include("não pode ser em branco.")
  end

  it "é inválido sem o valor o serviço" do
    service = build(:service, value: nil)
    service.valid?
    expect(user.errors[:value]).to include("não pode ser em branco.")
  end

  it "o valor do serviço tem que ter até 4 caracteres" do
    service = build(:service, value: "22")
    service.valid?
    expect(user.errors[:value]).to include("muito grande. Máximo de 4 caracteres.")
  end

  it "é inválido sem a duração o serviço" do
    service = build(:service, duration: nil)
    service.valid?
    expect(user.errors[:duration]).to include("não pode ser em branco.")
  end

  it "a duração do serviço tem que ter apenas 1 caractere" do
    service = build(:service, duration: "2")
    service.valid?
    expect(user.errors[:duration]).to include("muito grande. Máximo de 1 caracteres.")
  end

end

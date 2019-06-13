require 'rails_helper'

describe Contact do
  it "é válido quando contém o primeiro nome, um email e uma mensagem" do
    user = build(:contact)
    expect(user).to be_valid
  end
end

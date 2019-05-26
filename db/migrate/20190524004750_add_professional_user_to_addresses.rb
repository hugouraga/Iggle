class AddProfessionalUserToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :professional_user, foreign_key: true
  end
end

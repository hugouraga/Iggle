class AddProfessionalUserToServices < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :professional_user, foreign_key: true
  end
end

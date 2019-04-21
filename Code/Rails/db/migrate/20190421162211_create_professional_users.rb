class CreateProfessionalUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :professional_users do |t|
      t.string :name, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :phone, null: false, default: ''
      t.string :profession, null: false, default: ''
      t.string :document, null: false, default: ''
      t.string :description, null: false, default: ''
      t.string :facebook, null: false, default: ''
      t.string :instagram, null: false, default: ''
      t.string :password_digest, null: false, default: ''

      t.timestamps
    end
  end
end

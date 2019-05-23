class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :number
      t.string :description
      t.string :postal_code
      t.string :district
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end

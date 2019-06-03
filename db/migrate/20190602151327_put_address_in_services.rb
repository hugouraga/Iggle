class PutAddressInServices < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :address, foreign_key: true
  end
end

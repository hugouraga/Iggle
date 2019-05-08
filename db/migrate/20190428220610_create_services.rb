class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :service, null: false, default: ''
      t.string :description, null: false, default: ''
      t.string :value, null: false, default: ''
      t.string :duration, null: false, default: ''
      
      t.timestamps
    end
  end
end

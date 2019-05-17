class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :day, null: false
      t.string :hour, null: false

      t.timestamps
    end
  end
end

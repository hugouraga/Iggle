class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :day
      t.string :hour

      t.timestamps
    end
  end
end

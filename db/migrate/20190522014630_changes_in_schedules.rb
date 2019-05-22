class ChangesInSchedules < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :hour
    add_column :schedules, :hour_start, :int
    add_column :schedules, :hour_end, :int
  end
end

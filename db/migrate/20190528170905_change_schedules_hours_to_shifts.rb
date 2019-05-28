class ChangeSchedulesHoursToShifts < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :hour_start
    remove_column :schedules, :hour_end

    add_column :schedules, :morning, :string, null: false, default: 'false'
    add_column :schedules, :evening, :string, null: false, default: 'false'
    add_column :schedules, :night, :string, null: false, default: 'false'
  end
end

class ChangeSchedulesHourToText < ActiveRecord::Migration[5.2]
  def change
    change_column :schedules, :hour, :text
  end
end

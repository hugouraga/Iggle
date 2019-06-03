class ChangeSchedulesForeignKey < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :service_id

    add_reference :schedules, :address, foreign_key: true
  end
end

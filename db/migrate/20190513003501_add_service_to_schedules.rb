class AddServiceToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_reference :schedules, :service, foreign_key: true
  end
end

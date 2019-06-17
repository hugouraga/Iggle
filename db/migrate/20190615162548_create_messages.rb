class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :conversation, index: true
      t.references :professional_user, index: true
      t.references :normal_user, index: true

      t.timestamps
    end
  end
end

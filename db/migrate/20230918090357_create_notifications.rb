class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :readtime
      t.text :heading
      t.text :description

      t.timestamps
    end
  end
end

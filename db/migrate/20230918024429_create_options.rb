class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.text :response

      t.timestamps
    end
  end
end

class CreateResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses do |t|
      t.integer :credits_earned

      t.timestamps
    end
  end
end

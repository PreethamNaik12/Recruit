class DeleteColumns < ActiveRecord::Migration[6.1]
  def change
    drop_table :forms
    drop_table :questions
  end
end

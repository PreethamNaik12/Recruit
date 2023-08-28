class CreateForms < ActiveRecord::Migration[6.1]
  def change
    create_table :forms do |t|
      t.string :role
      t.float :salary
      t.string :typeposition
      t.text :description

      t.timestamps
    end
  end
end

class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.boolean :required
      t.string :typequestion
      t.text :information

      t.timestamps
    end
  end
end

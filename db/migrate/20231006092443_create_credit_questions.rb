class CreateCreditQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :credit_questions do |t|
      t.text :title

      t.timestamps
    end
  end
end

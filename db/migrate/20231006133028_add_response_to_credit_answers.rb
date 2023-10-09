class AddResponseToCreditAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :credit_answers, :response, foreign_key: true
  end
end

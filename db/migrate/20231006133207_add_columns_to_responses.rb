class AddColumnsToResponses < ActiveRecord::Migration[6.1]
  def change
    add_reference :responses, :credit_answer, foreign_key: true
  end
end

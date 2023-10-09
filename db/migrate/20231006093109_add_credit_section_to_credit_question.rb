class AddCreditSectionToCreditQuestion < ActiveRecord::Migration[6.1]
  def change
    add_reference :credit_questions, :credit_section, null: false, foreign_key: true
  end
end

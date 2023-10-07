class AddColumnToResponse < ActiveRecord::Migration[6.1]
  def change
    add_column :responses,:name,:string
    add_column :responses, :app_no,:string
  end
end

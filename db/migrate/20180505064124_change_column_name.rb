class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :student_id, :student_number
  end
end

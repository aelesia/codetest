class AddIndexToStudents < ActiveRecord::Migration[5.1]
  def change
    add_index :students, :student_number, unique: true
  end
end

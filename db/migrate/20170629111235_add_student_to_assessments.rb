class AddStudentToAssessments < ActiveRecord::Migration[5.1]
  def change
    add_reference :assessments, :student, foreign_key: true
  end
end

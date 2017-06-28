class AddCommentToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :comment, :text
  end
end

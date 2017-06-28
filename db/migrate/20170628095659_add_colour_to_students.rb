class AddColourToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :colour, :string
  end
end

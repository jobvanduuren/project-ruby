class CreateAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :assessments do |t|
      t.string :colour
      t.text :comment
      t.date :date

      t.timestamps
    end
  end
end

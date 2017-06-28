class AddEndDateToBatches < ActiveRecord::Migration[5.1]
  def change
    add_column :batches, :end_date, :datetime
  end
end

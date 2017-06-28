class AddStartDateToBatches < ActiveRecord::Migration[5.1]
  def change
    add_column :batches, :start_date, :datetime
  end
end

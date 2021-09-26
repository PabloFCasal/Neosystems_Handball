class ChangeStartAndEnd < ActiveRecord::Migration[6.1]
  def change
    rename_column :matches, :start, :started_at
    rename_column :matches, :end, :ended_at
  end
end

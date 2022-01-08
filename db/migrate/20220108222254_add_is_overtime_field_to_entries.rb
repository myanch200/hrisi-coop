class AddIsOvertimeFieldToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :is_overtime, :boolean, default: false
  end
end

class ChangeHoursFromIntToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :entries, :hours, :decimal, precision: 5, scale: 2
  end
end

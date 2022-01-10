class AddDefaultTrueToNormalRateAndOvertimeRate < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :normal_rate, :decimal, precision: 5, scale: 2, default: 9.50
    change_column :users, :over_time_rate, :decimal, precision: 5, scale: 2, default: 14.50
  end
end

class AddNormalRateAndOverTImeRateToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :normal_rate, :decimal, precision: 5, scale: 2
    add_column :users, :over_time_rate, :decimal, precision: 5, scale: 2
  end
end

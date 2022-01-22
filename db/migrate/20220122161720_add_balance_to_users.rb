class AddBalanceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :balance, :decimal, default: 0.0 , null: false, scale: 2, precision: 5
  end
end

class CreateBalances < ActiveRecord::Migration[7.0]
  def change
    create_table :balances do |t|
      t.decimal :amount, precision: 5, scale: 2
      t.belongs_to :user,index: { unique: true }
      t.timestamps
    end
  end
end

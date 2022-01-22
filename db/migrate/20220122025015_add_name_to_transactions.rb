class AddNameToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :name, :string, null: false
  end
end

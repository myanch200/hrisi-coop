class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.decimal :amount, precision: 5, scale: 2 , null: false
      t.string :type, null: false
      t.text :note 
      t.string :category, default: "general"
      t.timestamps
    end
  end
end

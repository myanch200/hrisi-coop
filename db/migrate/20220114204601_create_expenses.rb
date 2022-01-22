class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.date :date
      t.decimal :amount, precision: 5, scale: 2
      t.text :description, null: true , default: 'Lidl'
      t.references :user, foreign_key: true 
      t.timestamps
    end
  end
end

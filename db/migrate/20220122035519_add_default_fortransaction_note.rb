class AddDefaultFortransactionNote < ActiveRecord::Migration[7.0]
  def change
    change_column_default :transactions, :note, "No note"
  end
end

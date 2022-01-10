class AddUserToEntry < ActiveRecord::Migration[7.0]
  def change
    add_reference :entries, :user, index: true, foreign_key: true
  end
end

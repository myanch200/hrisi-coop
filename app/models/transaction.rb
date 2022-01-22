class Transaction < ApplicationRecord
    scope :by_current_user, lambda {|user| where("transactions.user_id = ?", user.id) }
end

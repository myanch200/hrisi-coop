class Transaction < ApplicationRecord
    scope :by_current_user, lambda {|user| where("transactions.user_id = ?", user.id) }

    TYPES = %w[income outcome]

    def self.transaction_types
      TYPES.map { |type| [type.capitalize, type] }
    end
end

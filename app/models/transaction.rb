class Transaction < ApplicationRecord
    after_save :process_add_transaction
    after_destroy :process_remove_transaction
    scope :by_current_user, lambda {|user| where("transactions.user_id = ?", user.id) }

    TYPES = %w[income outcome]

    def self.transaction_types
      TYPES.map { |type| [type.capitalize, type] }
    end

    def process_add_transaction
      current_user = User.find(self.user_id)
      if self.transaction_type == 'income'
        current_user.balance += self.amount
      else
        current_user.balance -= self.amount
      end
      current_user.save
    end

    def process_remove_transaction
      current_user = User.find(self.user_id)
      if self.transaction_type == 'income'
        current_user.balance -= self.amount
      else
        current_user.balance += self.amount
      end
      current_user.save
    end
end

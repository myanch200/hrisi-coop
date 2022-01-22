class Expense < ApplicationRecord
    belongs_to :user
    validates :date, presence: true
    validates :amount, presence: true
    scope :by_current_user, lambda {|user| where("expenses.user_id = ?", user.id) }
    scope :from_this_month, lambda { where("entries.date > ? AND entries.date < ?", Time.now.beginning_of_month, Time.now.end_of_month) }



    def self.total_expenses_for_current_month
        Expense.from_this_month.by_current_user(User.current_user).sum(:amount)
    end

    def self.total_expenses_for_user(user)
        where(user: user).sum(:amount)
    end

    def self.total_expenses_for_user_on_date(user, date)
        where(user: user, date: date).sum(:amount)
    end
end

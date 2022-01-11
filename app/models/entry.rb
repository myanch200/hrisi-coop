class Entry < ApplicationRecord
    has_one :user, dependent: :delete_all
    validates :date, presence: true
    validates :hours, presence: true
    scope :from_this_month, lambda { where("entries.date > ? AND entries.date < ?", Time.now.beginning_of_month, Time.now.end_of_month) }
    scope :by_current_user, lambda {|user| where("entries.user_id = ?", user.id) }
    belongs_to :user
end

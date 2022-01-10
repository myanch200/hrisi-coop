class Entry < ApplicationRecord
    validates :date, presence: true
    validates :hours, presence: true
    scope :from_this_month, lambda { where("entries.date > ? AND entries.date < ?", Time.now.beginning_of_month, Time.now.end_of_month) }

end

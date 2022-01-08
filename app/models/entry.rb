class Entry < ApplicationRecord
    validates :date, presence: true
    validates :hours, presence: true
end

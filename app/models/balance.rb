class Balance < ApplicationRecord
    has_one :user, dependent: :destroy
    validates :amount, presence: true

end

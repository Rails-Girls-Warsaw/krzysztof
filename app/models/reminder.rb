class Reminder < ApplicationRecord
    validates :title, presence: true
    validates :do_before, presence: true
end

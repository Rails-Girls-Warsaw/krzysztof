class Reminder < ApplicationRecord
    validates :title, presence: true
    validates :do_before, presence: true

    def urgent?
       do_before < Date.today + 7.days && completed == false
    end
end

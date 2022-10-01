class WelcomeController < ApplicationController
  def index
    @reminders = Reminder.all
  end
end

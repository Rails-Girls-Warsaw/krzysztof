class RemindersController < ApplicationController
    def index
        @reminders = Reminder.all
    end

    def show
        @reminder = Reminder.find(params[:id])
    end

    def edit
        @reminder = Reminder.find(params[:id])
    end

    def new
        @reminder = Reminder.new
    end

    def create
        @reminder =  Reminder.new(params[:reminder].permit(:title, :do_before)) 
       
        @reminder.save
        if @reminder.errors.any?
            render 'new' and return
        else
            # redirect_to reminders_path
        end
    end

    def update
        @reminder = Reminder.find(params[:id])
        @reminder.update(params[:reminder].permit(:title, :do_before, :completed))
        redirect_to reminder_path(@reminder)
    end

    def destroy
        @reminder = Reminder.find(params[:id])
        @reminder.destroy
        redirect_to reminders_path
    end
end

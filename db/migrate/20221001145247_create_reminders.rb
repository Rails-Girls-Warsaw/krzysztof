class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.string :title
      t.boolean :completed, default: false
      t.datetime :do_before
      t.timestamps
    end
  end
end

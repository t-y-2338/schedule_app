class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :start
      t.date :finish
      t.boolean :all_day
      t.text :memo

      t.timestamps
    end
  end
end

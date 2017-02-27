class CreateMaintenances < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenances do |t|
      t.string :name
      t.text :details
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :remind_subscribers
      t.boolean :set_inprogress_at_start
      t.boolean :set_complete_at_end

      t.timestamps
    end
  end
end

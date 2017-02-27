class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.string :name
      t.integer :status
      t.text :message

      t.timestamps
    end
  end
end

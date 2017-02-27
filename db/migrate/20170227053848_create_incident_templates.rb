class CreateIncidentTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :incident_templates do |t|
      t.string :name
      t.string :status
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end

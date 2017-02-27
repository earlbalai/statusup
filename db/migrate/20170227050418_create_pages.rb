class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :owner_id, null: false
      t.boolean :private, null: false, default: false
      t.string :name, null: false
      t.text :support_url
      t.text :website_url
      t.string :notification_from_email
      t.string :sms_country_code, default: "us"
      t.string :organization_name
      t.string :timezone, null: false, default: "Eastern Time (US & Canada)"
      t.boolean :search_engine_visibility, null: false, default: false
      t.integer :layout_id, null: false, default: 0
      t.string :body_background_color, null: false, default: "ffffff"
      t.string :font_color, null: false, default: "333333"
      t.string :light_font_color, null: false, default: "AAAAAA"
      t.string :greens, null: false, default: "2fcc66"
      t.string :yellows, null: false, default: "f1c40f"
      t.string :oranges, null: false, default: "e67e22"
      t.string :reds, null: false, default: "e74c3c"
      t.string :blues, null: false, default: "3498DB"
      t.string :link_color, null: false, default: "3498db"
      t.string :border_color, null: false, default: "E0E0E0"
      t.string :graph_color, null: false, default: "3498db"
      t.string :logo
      t.string :cover_photo
      t.string :favicon
      t.text :headline
      t.text :about

      t.timestamps
    end
  end
end

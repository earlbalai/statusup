class AddUrlSupportToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :local_url, :string
    add_column :pages, :custom_domain, :string
  end
end

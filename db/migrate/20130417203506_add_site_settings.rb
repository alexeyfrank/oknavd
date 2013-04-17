class AddSiteSettings < ActiveRecord::Migration
  def change
    add_column :site_settings, :show_banner, :boolean
  end
end

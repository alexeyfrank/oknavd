class AddBannerUrlToSiteSettings < ActiveRecord::Migration
  def change
    add_column :site_settings, :banner_link, :text
  end
end

class SiteSettings < ActiveRecord::Base
  attr_accessible :banner, :show_banner, :banner_link

  mount_uploader :banner, SiteSettingsUploader
end

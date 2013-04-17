class SiteSettings < ActiveRecord::Base
  attr_accessible :banner, :show_banner

  mount_uploader :banner, SiteSettingsUploader
end

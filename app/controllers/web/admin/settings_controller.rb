class Web::Admin::SettingsController < Web::Admin::ApplicationController
  def edit
    @settings = SiteSettings.first
  end

  def update
    @settings = SiteSettings.first
    if @settings.update_attributes params[:site_settings]
      flash_success
      redirect_to edit_admin_settings_path
    else
      flash_error
      render :edit
    end
  end
end

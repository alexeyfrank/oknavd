class Web::Admin::WelcomeController < Web::Admin::ApplicationController
  def index
    @users = User.admin.limit(5)
    @pages = Page.admin.limit(5)
  end
end

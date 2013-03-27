class Web::NewsController < Web::ApplicationController
  def show
    @item = News.find params[:id]
  end
end

class Web::Admin::NewsController < Web::Admin::ApplicationController
  def index
    @search = News.ransack params[:q]
    @news = @search.result.admin.page(params[:page]).per(20)
  end

  def new
    @news = ::Web::Admin::NewsEditType.new
  end

  def edit
    @news = ::Web::Admin::NewsEditType.find params[:id]
  end

  def create
    @news = ::Web::Admin::NewsEditType.new params[:news]
    if @news.save
      flash_success
      redirect_to edit_admin_news_path(@news)
    else
      flash_error
      render :new
    end
  end

  def update
    @news = ::Web::Admin::NewsEditType.find params[:id]
    if @news.update_attributes params[:news]
      flash_success
      redirect_to edit_admin_news_path(@news)
    else
      flash_error
      render :edit
    end
  end

  def destroy
    @news = News.find params[:id]
    @news.destroy
    flash_success
    redirect_to admin_news_path
  end
end

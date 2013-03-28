class Web::Admin::MeasuresController < Web::Admin::ApplicationController
  def index
    @search = CallMeasurer.ransack params[:q]
    @items = @search.result.admin.page(params[:page]).per(20)
  end

  def show
    @item = CallMeasurer.find params[:id]
  end
end

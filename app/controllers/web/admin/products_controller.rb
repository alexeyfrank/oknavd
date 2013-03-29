class Web::Admin::ProductsController < Web::Admin::ApplicationController
  def index
    @search = Product.ransack params[:q]
    @items = @search.result.page(params[:page]).per(20)
  end

  def new
    @item = ::Web::Admin::ProductEditType.new
  end

  def create
    @item = ::Web::Admin::ProductEditType.new params[:product]
    if @item.save
      flash_success
      redirect_to edit_admin_product_path(@item)
    else
      flash_error
      render :new
    end
  end

  def edit
    @item = ::Web::Admin::ProductEditType.find params[:id]
  end

  def update
    @item = ::Web::Admin::ProductEditType.find params[:id]
    if @item.update_attributes params[:product]
      flash_success
      redirect_to edit_admin_product_path(@item)
    else
      flash_error
      render :edit
    end
  end

  def destroy
    @item = Product.find params[:id]
    @item.destroy
    flash_success
    redirect_to admin_products_path
  end
end

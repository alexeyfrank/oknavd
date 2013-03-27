class Web::Admin::MenusController < Web::Admin::ApplicationController
  def index
    @search = Menu.ransack params[:q]
    @items = @search.result.page(params[:page]).per(20)
  end

  def new
    @item = ::Web::Admin::MenuEditType.new
  end

  def edit
    @item = ::Web::Admin::MenuEditType.find params[:id]
  end

  def create
    @item = ::Web::Admin::MenuEditType.new params[:menu]
    if @item.save
      flash_success
      redirect_to edit_admin_menu_path(@item)
    else
      flash_error
      render :new
    end
  end

  def update
    @item = ::Web::Admin::MenuEditType.find params[:id]
    if @item.update_attributes params[:menu]
      flash_success
      redirect_to edit_admin_menu_path(@item)
    else
      flash_error
      render :edit
    end
  end

  def destroy
    @item = Menu.find params[:id]
    @item.destroy
    flash_success
    redirect_to admin_menus_path
  end
end

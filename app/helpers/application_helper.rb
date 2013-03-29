module ApplicationHelper

  def render_submenu(menu)
    items = menu.items.each_slice(3)
    render 'web/shared/submenu', items: items
  end

  def news_items
    @news ||= News.web
  end

  def products_items
    @products ||= Product.web
  end
end

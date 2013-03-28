module ApplicationHelper

  def render_submenu(menu)
    items = menu.items.each_slice(3)
    render 'web/shared/submenu', items: items
  end

  def news_chunks
    @news ||= News.web
    news = @news.each_slice(4)
  end
end

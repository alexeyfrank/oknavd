class Menu::Item < ActiveRecord::Base
  attr_accessible :menu_id, :position, :slug, :title

  belongs_to :menu

  validates :title, presence: true, length: { maximum: 255 }
  validates :slug, presence: true, length: { maximum: 255 }
  validates :position, presence: true

  def to_s
    title
  end
end

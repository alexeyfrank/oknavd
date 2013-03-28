class Menu < ActiveRecord::Base
  include MenuRepository

  attr_accessible :slug, :title
  has_many :items, class_name: 'Menu::Item'
  has_many :pages

  validates :title, presence: true, length: { maximum: 255 }
  validates :slug, presence: true, length: { maximum: 255 }, slug: true

end

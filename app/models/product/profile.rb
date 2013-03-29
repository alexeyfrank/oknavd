class Product::Profile < ActiveRecord::Base
  attr_accessible :brick_house_cost, :panel_house_cost, :product_id, :title

  belongs_to :product

  validates :title, presence: true, length: { maximum: 255 }

  def to_s
    title
  end
end

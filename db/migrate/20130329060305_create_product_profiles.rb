class CreateProductProfiles < ActiveRecord::Migration
  def change
    create_table :product_profiles do |t|
      t.string :title
      t.integer :brick_house_cost
      t.integer :panel_house_cost
      t.integer :product_id

      t.timestamps
    end
  end
end

class ChangeProfilesColumns < ActiveRecord::Migration
  def change
    change_column :product_profiles, :brick_house_cost, :string
    change_column :product_profiles, :panel_house_cost, :string
  end
end

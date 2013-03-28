class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :title
      t.integer :position
      t.string :slug
      t.integer :menu_id

      t.timestamps
    end
  end
end

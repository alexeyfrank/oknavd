class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.string :preview_image
      t.string :state

      t.timestamps
    end
  end
end

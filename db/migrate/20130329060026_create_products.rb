class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :size
      t.string :options
      t.string :preview_image
      t.string :state

      t.timestamps
    end
  end
end

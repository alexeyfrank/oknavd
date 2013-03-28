class CreateCallMeasurers < ActiveRecord::Migration
  def change
    create_table :call_measurers do |t|
      t.string :full_name
      t.string :contacts
      t.text :content

      t.timestamps
    end
  end
end

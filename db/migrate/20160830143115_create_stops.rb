class CreateStops < ActiveRecord::Migration[5.0]
  def change
    create_table :stops do |t|
      t.string :stop_name
      t.integer :order
      t.references :route
      t.timestamps
    end
  end
end

class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :shortest_path
      t.timestamps
    end
  end
end

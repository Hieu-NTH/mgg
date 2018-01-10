class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :brand
      t.text :description

      t.timestamps
    end
  end
end

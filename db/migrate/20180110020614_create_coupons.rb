class CreateCoupons < ActiveRecord::Migration[5.1]
  def change
    create_table :coupons do |t|
      t.string :code
      t.integer :discount_type
      t.integer :discount_value
      t.text :condition
      t.text :note
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end

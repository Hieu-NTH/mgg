class CreateCouponVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :coupon_vehicles do |t|
      t.references :coupon, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end

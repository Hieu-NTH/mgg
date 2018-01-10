class CreateCouponProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :coupon_provinces do |t|
      t.references :coupon, foreign_key: true
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end

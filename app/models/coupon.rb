class Coupon < ApplicationRecord
  has_many :coupon_provinces, dependent: :destroy
  has_many :coupon_vehicles, :dependent: :destroy
  has_many :provinces, through: :coupon_provinces
  has_many :vehicles, through: :coupon_vehicles

  enum discount_type: [:percent, :direct]
end

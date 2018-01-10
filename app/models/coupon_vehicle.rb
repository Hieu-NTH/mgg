class CouponVehicle < ApplicationRecord
  belongs_to :coupon
  belongs_to :vehicle
end

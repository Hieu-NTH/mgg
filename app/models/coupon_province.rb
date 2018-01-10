class CouponProvince < ApplicationRecord
  belongs_to :coupon
  belongs_to :province
end

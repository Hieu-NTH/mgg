class CouponsController < ApplicationController
  def grab
    grab_vehicle_ids = Vehicle.grab.pluck :id
    @coupons = Coupon.includes(:vehicles, :provinces).joins(:coupon_vehicles).where("coupon_vehicles.vehicle_id": grab_vehicle_ids)
  end

  def uber
    uber_vehicle_ids = Vehicle.uber.pluck :id
    @coupons = Coupon.includes(:vehicles, :provinces).joins(:coupon_vehicles).where("coupon_vehicles.vehicle_id": uber_vehicle_ids)
  end
end

Vehicle.create name: "Grab Bike", brand: 0
Vehicle.create name: "Grab Taxi", brand: 0
Vehicle.create name: "Grab Share", brand: 0
Vehicle.create name: "Grab 4", brand: 0
Vehicle.create name: "Grab 7", brand: 0
Vehicle.create name: "Grab Plus", brand: 0

Vehicle.create name: "Uber Moto", brand: 1
Vehicle.create name: "Uber X", brand: 1
Vehicle.create name: "Uber Deliver", brand: 1
Vehicle.create name: "Uber Black", brand: 1
Vehicle.create name: "Uber SUV", brand: 1

Province.create name: "Ha Noi"
Province.create name: "Ho Chi Minh"
Province.create name: "Da Nang"

5.times do
  discount_type = rand(0..1)
  coupon = Coupon.create code: Faker::Code.asin,
    discount_type: discount_type,
    discount_value: (discount_type == 0 ? rand(10..80) : (rand(10..80) * 1000)),
    condition: [nil, "Example condition"].sample,
    note: Faker::Lorem.sentence,
    starts_at: Date.current - rand(1..10).days,
    ends_at: Date.current + rand(1..10).days,
    province_ids: (1..3).to_a.sample(2),
    vehicle_ids: (1..5).to_a.sample(3)

end

5.times do
  discount_type = rand(0..1)
  Coupon.create code: Faker::Code.asin,
    discount_type: discount_type,
    discount_value: (discount_type == 0 ? rand(10..80) : (rand(10..80) * 1000)),
    condition: [nil, "Example condition"].sample,
    note: Faker::Lorem.sentence,
    starts_at: Date.current - rand(1..10).days,
    ends_at: Date.current + rand(1..10).days,
    province_ids: (1..3).to_a.sample(2),
    vehicle_ids: (6..10).to_a.sample(2)
end

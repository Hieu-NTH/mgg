Rails.application.routes.draw do
  get "grab" => "coupons#grab"
  get "uber" => "coupons#uber"
end

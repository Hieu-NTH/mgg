class Vehicle < ApplicationRecord
  enum brand: [:grab, :uber]
end

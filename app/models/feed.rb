class Feed < ApplicationRecord
  validates:propertyname, presence:true

  has_many :nearest_station
  accepts_nested_attributes_for :nearest_station
end
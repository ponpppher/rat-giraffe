class Feed < ApplicationRecord
  validates:propertyname, presence:true, length:{maximum:50}
  validates:rent, presence:true, length:{maximum:8}
  validates:address, presence:true, length:{maximum:100}
  validates:age, presence:true, length:{maximum:3}
  validates:remarks, presence:true, length:{maximum:120}

  has_many :nearest_stations
  accepts_nested_attributes_for :nearest_stations
end
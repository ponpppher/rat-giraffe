class Feed < ApplicationRecord
  validates:propertyname, presence:true
  validates:rent, presence:true
  validates:address, presence:true
  validates:age, presence:true
  validates:remarks, presence:true, length:{maximum:120}

  has_many :nearest_stations
  accepts_nested_attributes_for :nearest_stations
end
class NearestStation < ApplicationRecord
  validates:route_name, presence:true
  validates:station_name, presence:true
  validates:minute_walk, presence:true

  belongs_to :feed, optional: true
end

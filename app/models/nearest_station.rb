class NearestStation < ApplicationRecord
  validates:route_name, presence:true, length:{maximum:30}
  validates:station_name, presence:true, length:{maximum:30}
  validates:minute_walk, presence:true, length:{maximum:3}

  belongs_to :feed, optional: true
end

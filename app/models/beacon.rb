class Beacon < ApplicationRecord
  belongs_to :user, inverse_of: :beacons
  has_one :agent, through: :user
end

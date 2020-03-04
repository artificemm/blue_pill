class Beacon < ApplicationRecord
  has_one :ownership
  has_one :user, through: :ownership
  validates :user, uniqueness: true
    # validates :beacon_id, uniqueness: { scope: :user_id }

end

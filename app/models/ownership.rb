class Ownership < ApplicationRecord
  belongs_to :user
  belongs_to :beacon
  # validates :beacon_id, uniqueness: { scope: :user_id }
end

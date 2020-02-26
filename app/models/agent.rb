# == Schema Information
#
# Table name: agents
#
#  id         :bigint           not null, primary key
#  uuid       :string
#  a_model    :string
#  a_make     :string
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Agent < ApplicationRecord
  belongs_to :user, inverse_of: :agents
  has_many :beacons, through: :user
end

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
require "test_helper"

describe Agent do
  # it "does a thing" do
  #   value(1+1).must_equal 2
  # end
end

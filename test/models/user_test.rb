# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  handle                 :string
#  first_name             :string
#  last_name              :string
#
require "test_helper"

describe User do
  # it "does a thing" do
  #   value(1+1).must_equal 2
  # end
end

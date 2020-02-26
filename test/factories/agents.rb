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
FactoryBot.define do
  factory :agent do
    uuid { "MyString" }
    a_model { "MyString" }
    a_make { "MyString" }
    user { nil }
  end
end

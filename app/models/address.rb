# == Schema Information
#
# Table name: addresses
#
#  id          :bigint(8)        not null, primary key
#  user_id     :bigint(8)
#  add_line1   :string
#  add_line2   :string
#  city        :string
#  state       :string
#  zip         :string
#  country     :string
#  region      :integer
#  sector      :integer
#  instruction :text
#  use_of      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Address < ApplicationRecord
  belongs_to :user
end

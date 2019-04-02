# == Schema Information
#
# Table name: addresses
#
#  id           :bigint(8)        not null, primary key
#  user_id      :bigint(8)
#  city         :string
#  state        :string
#  zip          :string
#  region       :integer
#  sector       :integer
#  instruction  :text
#  use_of       :integer
#  address1     :string
#  address2     :string
#  country_code :integer
#

class Address < ApplicationRecord
  belongs_to :user
end

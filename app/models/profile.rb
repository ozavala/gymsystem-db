# == Schema Information
#
# Table name: profiles
#
#  id             :bigint(8)        not null, primary key
#  user_id        :bigint(8)
#  username       :string
#  avatar         :string
#  birthday       :date
#  gender         :integer
#  role           :integer
#  start_date     :date
#  thru_date      :date
#  enrollment_id  :bigint(8)
#  enrollment_fee :decimal(20, 2)
#  active         :boolean
#  level          :integer
#  source         :integer
#  notes          :text
#

class Profile < ApplicationRecord
  belongs_to :user
end

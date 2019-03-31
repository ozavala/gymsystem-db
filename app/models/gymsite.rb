# == Schema Information
#
# Table name: gymsites
#
#  id          :bigint(8)        not null, primary key
#  surname     :string
#  legal_id    :string
#  logo        :string
#  description :text
#  email       :string
#  start_date  :date
#  thru_date   :date
#

class Gymsite < ApplicationRecord
  has_many :users
end

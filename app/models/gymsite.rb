# == Schema Information
#
# Table name: gymsites
#
#  id           :bigint(8)        not null, primary key
#  surname      :string
#  legal_id     :string
#  logo         :string
#  description  :text
#  email        :string
#  start_date   :date
#  thru_date    :date
#  phone1       :string
#  phone2       :string
#  address1     :string
#  address2     :string
#  city         :string
#  state        :string
#  zip          :string
#  country      :string
#  region       :integer
#  sector       :integer
#  instructions :text
#

class Gymsite < ApplicationRecord
  has_many :users, dependent: :nullify

  enum region: {no_escogida: 0, norte: 1, centro: 2,  sur: 3}
  enum sector: {no_disponible: 0, village: 1, alahambra: 2, navona: 3, lagos: 4, batán: 5}
end

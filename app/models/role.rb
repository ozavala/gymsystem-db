# == Schema Information
#
# Table name: roles
#
#  id        :bigint(8)        not null, primary key
#  role_name :string
#

class Role < ApplicationRecord
  has_many :roles_users
  has_many :users, through: :roles_users, dependent: :destroy
end

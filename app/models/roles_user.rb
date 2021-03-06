# == Schema Information
#
# Table name: roles_users
#
#  id        :bigint(8)        not null, primary key
#  user_id   :bigint(8)
#  role_id   :bigint(8)
#  from_date :date
#  thru_date :date
#

class RolesUser < ApplicationRecord
  belongs_to :user
  belongs_to :role
end

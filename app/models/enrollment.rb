# == Schema Information
#
# Table name: enrollments
#
#  id              :bigint(8)        not null, primary key
#  package_id      :bigint(8)
#  payment_id      :bigint(8)
#  enrollment_date :date
#

class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  belongs_to :package
end

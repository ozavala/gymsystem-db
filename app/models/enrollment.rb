# == Schema Information
#
# Table name: enrollments
#
#  id              :bigint(8)        not null, primary key
#  payment_id      :bigint(8)
#  package_id      :bigint(8)
#  enrollment_date :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  belongs_to :package
end

# == Schema Information
#
# Table name: phones
#
#  id      :bigint(8)        not null, primary key
#  user_id :bigint(8)
#  number  :string
#  purpose :integer
#

class Phone < ApplicationRecord
  belongs_to :user
  
end

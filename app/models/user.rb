# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  gymsite_id      :bigint(8)
#  first_name      :string
#  last_name       :string
#  email           :string
#  id_document     :string
#  document_type   :integer
#  irs_id          :string
#  password_digest :string
#

class User < ApplicationRecord
  has_secure_password
  after_initialize :current_gymsite
  
  belongs_to :gymsite
  has_many :roles_users, inverse_of: :user
  has_many :roles, through: :roles_users
  has_one :profile
  has_many :addresses
  has_many :phones
  has_one :user_account
  has_many :invoices

  accepts_nested_attributes_for :roles_users
  accepts_nested_attributes_for :roles
  accepts_nested_attributes_for :profile

  # def current_gymsite
  #   self.gymsite ||= build_gymsite
  # end
  def current_gymsite
     if @gymsite
       current_gymsite = @gymsite
     else
       @gymsite = Gymsite.first
       current_gymsite = @gymsite
     end
  end

end

class Roleup
  include ActiveModel::Model

  attr_accessor :gymsite_id, :user_first_name, :user_last_name, :user_password, :user_role_name, :user

  validates :user_first_name, presence: true
  validates :user_last_name, presence: true
  validates :user_password, presence: true
  validates :user_email, presence: true

  def save
    if valid?
      @user = User.create(gymsite_id: 3, first_name: user_first_name, last_name: user_last_name, password: user_password)
        @user.roles.create(role_name: user_role_name)
      else
      end
    end
  end

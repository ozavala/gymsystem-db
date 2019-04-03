class UsersController < ApplicationController
before_action :set_user, only: [ :update, :destroy]

def index
  @users = User.all

end

def new
  @roleup = Roleup.new
  # @user.roles_users.build
end

def edit
end

def show
  @user = User.find(params[:id])
  #@user = current_user
end

def create
    @roleup = Roleup.new(roleup_params)

      if @roleup.save
        set_current_user(@roleup_user)
        redirect_to root_path
      else
        render :new
      end
    end
  end

def update
  respond_to do |format|

      if @user.update(user_params)
      format.html { redirect_to @user, notice: 'User was successfully updated.'}
    else
      format.html { render :edit, notice: 'Error user was not updated.' }
    end

end

def destroy
  @user.destroy
  format.html { render :index, notice: "User succesfully destroyed" }
end

private

  def user_params
    params.require(:user).permit(:id, :gymsite_id,
      :first_name, :last_name, :email,
      roles_users_attributes: [:id,:user_id, :role_id],
      roles_attributes: [:id, :name ])
  end

  def set_user
    @user = User.find(params[:id])
  end
end

def set_current_user(roleup_user)
  @user = roleup_user
end

def roleup_params
  params.require(:roleup).permit(:user_first_name, :user_last_name, :user_password, :user_role_name)
end

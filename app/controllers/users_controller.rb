class UsersController < ApplicationController
before_action :set_user, only: [:edit, :show, :update, :destroy]

def index
  @users = User.all
end

def new
  @user = User.new
  @user.roles.build
end

def edit
end

def show
  #@user = current_user
end

def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Gymsite was successfully created.' }
      else
        format.html { render :new }
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

def current_user
  @user ||= :set_user
end

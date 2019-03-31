class RolesController < ApplicationController
  before_action :role_params

  private

  def role_params
    params.require(:role).permit(:role_name)
  end
end

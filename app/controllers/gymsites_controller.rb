class GymsitesController < ApplicationController
  before_action :set_gymsite, only: [:edit, :show, :delete]
  # around_action :current_gymsite, only: [:update, :create]

  def index
    @gymsites = Gymsite.all
  end

  def show
  end

  def new
    @gymsite = Gymsite.new
  end

  def edit
  end

  def update
    if @gymsite = Gymsite.update_attibutes(gymsite_params)
      flash[:notice] = "Gymsite succesfully updated"
      redirect_to access_menu_path(@gymsite)
    else
      flash[:notice] = 'Gymsite was not updated'
      redirect_to edit_gymsite_path
    end
  end

  def create

    @gymsite = Gymsite.new(gymsite_params)
    if @gymsite.save
      flash[:notice] = 'Gymsite created successfully.'
      redirect_to(access_menu_path)
    else
      render('new')
    end
  end

  def delete
  end

  def set_current_gymsite
      byebug
    session[:gymsite_id] = params[:id]
    # redirect_to assets_index_path
  end


  private

  def gymsite_params
    params.require(:gymsite).permit(:surname, :legal_id, :logo, :description, :email, :start_date, :trhu_date)
  end

  def set_gymsite
    @gymsite = Gymsite.find(params[:id])
  end



end

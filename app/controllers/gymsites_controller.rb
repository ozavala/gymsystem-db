class GymsitesController < ApplicationController
  before_action :set_gymsite, only: [:edit, :show, :destroy, :update]
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

    if @gymsite.update(gymsite_params)
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
      set_current_gymsite
      flash[:notice] = 'Gymsite created successfully.'
      redirect_to(access_menu_path)
    else
      render('new')
    end
  end

  def destroy
  @gymsite.destroy
  respond_to do |format|
    format.html { redirect_to gymsites_url, notice: 'Gymsite was successfully destroyed.' }
    format.json { head :no_content }
  end
end


  private

  def gymsite_params
    params.require(:gymsite).permit(:surname, :legal_id, :logo, :description,:address1, :address2, :city, :state, :zip, :country, :sector, :region, :instructions, :email, :phone1, :phone2, :start_date, :thru_date)
  end

  def set_gymsite
    @gymsite = Gymsite.find(params[:id])
  end



end

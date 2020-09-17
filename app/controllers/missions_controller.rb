class MissionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @mission = Mission.new
  end

  def index
    @missions = current_user.missions
    @pending_missions = Mission.where(statut: false)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  def show 
    @mission = Mission.find(params[:id])
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user_id = current_user.id
    @mission.category = Category.last
    if @mission.save
      @amount = 1000
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })

      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'chf',
      })
      redirect_to root_path
    end
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_mission_path
  end

  def destroy
    @mission = Mission.find(params[:id])
    puts @mission
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
    @mission.delete
  end

  private

  def mission_params
    params.require(:mission).permit(:title, :start_date, :description)
  end
end
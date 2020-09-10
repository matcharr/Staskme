class MissionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user_id = current_user.id
    if @mission.save
      @amount = 10000

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

  private

  def mission_params
    params.require(:mission).permit(:title, :start_date, :description, :category_id)
  end

end

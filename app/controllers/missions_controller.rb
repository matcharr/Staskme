class MissionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

   def new
      @mission = Mission.new
   end

   def index
      @missions = Mission.all
   end

   def show 
      @mission = Mission.find(params[:id])
   end

   def create
      @mission = Mission.new(mission_params)
      @mission.user_id = current_user.id
      #valeur par default pour le MVP
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
      puts @mission.errors.full_messages
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_mission_path
   end

   private

   def mission_params
     params.require(:mission).permit(:title, :start_date, :description)
   end
end
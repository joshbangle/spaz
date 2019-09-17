class EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def create
    if current_guide.premium?

          # Amount in cents
      @amount = (current_guide.cost * 100).to_i

      customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        customer: customer.id,
        amount: @amount,
        description: 'Spaz Guide Payment',
        currency: 'usd'
      )
    end
    
    current_user.enrollments.create(guide: current_guide)
    redirect_to guide_path(current_guide)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
  end

  private


  def current_guide
    @current_guide ||= Guide.find(params[:guide_id])
  end



end

class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    # @amount = 1999

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken],
      :plan => 'plan_DhfpffGzF1lxcG'
    )

    # charge = Stripe::Charge.create(
    #   :customer    => customer.id,
    #   :amount      => @amount,
    #   :description => 'A one month subscription to Tutorhacks.',
    #   :currency    => 'cad'
    # )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

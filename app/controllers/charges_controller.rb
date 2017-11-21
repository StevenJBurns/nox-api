class ChargesController < ApplicationController
  #before_action :amount_to_be_charged

  def create
    token = params[:token]
    amount = params[:amount]

    puts 'Hi from the server'
    puts params[:token]

    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here: https://dashboard.stripe.com/account/apikeys
    Stripe.api_key = "sk_test_3nepeTzuSdUMQm9JKWF2fKCq"

    # Token is created using Checkout or Elements!
    # Get the payment token ID submitted by the form:


    # Charge the user's card:
    charge = Stripe::Charge.create(
      :amount => amount,
      :currency => "usd",
      #:description => "Example charge",
      :source => token,
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def thanks
  end
end

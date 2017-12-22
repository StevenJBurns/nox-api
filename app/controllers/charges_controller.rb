class ChargesController < ApplicationController
  #before_action :amount_to_be_charged

  def create
    token = params[:token]
    currentUser = params[:currentUser]
    amount = params[:amount]

    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here: https://dashboard.stripe.com/account/apikeys
    Stripe.api_key = "sk_test_oeXe9v0Dx57ooSxUJCMJzcAs"

    puts 'Hi from the server'

    runningTotal = 0
    taxRate = 0.07
    shippingRate = 499

    shoppingCarts = ShoppingCart.joins(:user).where(:user_id => currentUser)

    shoppingCarts.each do |cart|
      product = Product.find(cart.product_id)

      runningTotal += product.price * cart.quantity
    end

    runningTotal *= 100

    puts runningTotal.inspect
    puts amount.inspect

    (runningTotal == amount) ? amount = amount : amount = 0

    amount += shippingRate
    amount += (amount * taxRate)
    amount = amount.ceil

    # Charge the user's card:
    charge = Stripe::Charge.create(
      :amount => amount / 100,
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

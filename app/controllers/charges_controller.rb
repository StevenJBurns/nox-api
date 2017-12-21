class ChargesController < ApplicationController
  #before_action :amount_to_be_charged

  def create
    token = params[:token]
    currentUser = params[:currentUser]
    amount = params[:amount]

    puts 'Hi from the server'
    puts params[:currentUser]

    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here: https://dashboard.stripe.com/account/apikeys
    Stripe.api_key = "sk_test_oeXe9v0Dx57ooSxUJCMJzcAs"

    # Token is created using Checkout or Elements!
    # Get the payment token ID submitted by the form:

    @shoppingCarts = ShoppingCart.where(:user_id => currentUser)

    chargedQuantities =  @shoppingCarts.map { |e| e.quantity }

    chargedProducts = @shoppingCarts.map { |e| e.product_id }

    prods = chargedProducts.map do |p|
      @products = Product.where(:id => p)
    end

    total = 0

    prods.map do |p, i|
      total = total + (p.price * chargedQuantities[i])
    end

    puts json: total

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

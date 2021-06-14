class BasketsController < ApplicationController
  def show 
    @basket = Basket.where(user: current_user, paid: false).first

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
      #   name: item.name,
      #   # images: [item.photo_url],
      #   amount: item.price_cents,
        currency: 'gbp',
      #   quantity: 1
      }],
      success_url: basket_url(@basket),
      cancel_url: basket_url(@basket)
    )
  
    @basket.update(checkout_session_id: session.id)
    redirect_to new_basket_payment_path(@basket)
  end
end

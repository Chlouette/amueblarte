class BasketsController < ApplicationController
  def show 
    @basket = Basket.where(user: current_user, paid: false).first
  end

  def confirm
    @basket = Basket.find(params[:id])
    line_items = @basket.basket_items.map do |basket_item|
      { name: basket_item.item.name,
      amount: basket_item.item.price_cents,
      currency: 'gbp',
      quantity: 1
    }
    end
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      success_url: basket_url(@basket),
      cancel_url: basket_url(@basket)
    )
  
    @basket.update(checkout_session_id: session.id)
    redirect_to new_basket_payment_path(@basket)
  end
end
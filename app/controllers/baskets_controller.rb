class BasketsController < ApplicationController
    def create
        items = Item.find(params[:item_id])
        basket  = Basket.create!(item: item, user: current_user)
      
        # session = Stripe::Checkout::Session.create(
        #   payment_method_types: ['card'],
        #   line_items: [{
        #     name: item.sku,
        #     images: [item.photo_url],
        #     amount: item.price_cents,
        #     currency: 'eur',
        #     quantity: 1
        #   }],
        #   success_url: basket_url(basket),
        #   cancel_url: basket_url(basket)
        # )
      
        basket.update(checkout_session_id: session.id)
        redirect_to new_basket_payment_path(basket)
      end

      def show 
        
      end
end

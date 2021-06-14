class BasketItemsController < ApplicationController
    def create
        item = Item.find(params[:item_id])
        # if current
        # current_user_baskets = Basket.where(user_id: current_user)

        # if current_user_bask.basket.paid == true
        #     basket = Basket.new(user: current_user)
        # else
        #     basket = Basket.find(user: current_user, paid: false)
        # end
        # Basket.find(user: current_user, paid: false)
        if current_user.baskets.where(user: current_user, paid: false).first
            basket = Basket.where(user: current_user, paid: false).first
        else
            basket = Basket.new(user: current_user)
            basket.save
        end
        basket_item = BasketItem.create!(item: item, basket: basket)
        
        redirect_to basket_path(basket)
        # basket.update(checkout_session_id: session.id)
      end
end

# add new column to basket STATUS default: pending
# in basketitem controller check if current user has a basket with pending status
# if so then that's the basket for current item
# if not then create new basket - then link to current user
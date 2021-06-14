class PaymentsController < ApplicationController
  def new
    @basket = Basket.find(params[:basket_id])
  end
end

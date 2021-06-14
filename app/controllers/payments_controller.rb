class PaymentsController < ApplicationController
  def new
    @basket = current_user.items.where(state:'pending').find(params[:order_id])
  end
end

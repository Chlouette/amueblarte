class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
    end

    def new 
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            # redirect_to new_booking_path(@item)
        else
            render :new
        end
    end

    def edit
        @item = Item.find(params[:id])
    end
    

    def update
        @item = Item.find(params[:id])
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, photos: [])
    end
end

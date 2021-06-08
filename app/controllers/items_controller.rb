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
        
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :photo)
    end
end

class ItemsController < ApplicationController
    def index_creation
        @items = Item.where(status: "collected")
        session[:booking_type] = "creation"
    end

    def index_decoration
        @items = Item.where(status: "for_sale")
        session[:booking_type] = "decoration"
    end

    def show
        @item = Item.find(params[:id])
    end

    def new 
        @item = Item.new
        session[:booking_type] = "donation"
    end

    def create
        @item = Item.new(item_params)
        @item.user = current_user
        if @item.save
            # for now redirect to home
            redirect_to item_path(@item)
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
        if @item.save
            redirect_to item_path
        else
            render :edit
        end
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :category, photos: [])
    end
end

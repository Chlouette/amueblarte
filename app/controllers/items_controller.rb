class ItemsController < ApplicationController
    def index_creation
        if params[:item] == "Select Category"
            @items = Item.where(status: "collected")
            redirect_to items_create_path
          elsif params[:item]
            @items = Item.where(category: params[:item])
            @filter = params[:item].to_s
          else
            @items = Item.where(status: "collected")
          end
        session[:booking_type] = "creation"
    end

    def index_decoration
        @items = Item.where(status: "for sale")
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
            redirect_to new_item_booking_path(@item)
        else
            render :new
        end
    end

    def edit
        @item = Item.find(params[:id])
    end
    
    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        if @item.save
            redirect_to user_path(current_user)
        else
            render :edit
        end
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :category, :status, photos: [])
    end
end

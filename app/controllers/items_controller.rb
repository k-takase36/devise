class ItemsContoroller < ApplicationController
  before_action :move_to_index, except: :index
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def CreateItems
    Item.create(name: item_params[:name], price: item_params[:price], user_id: current_user.id)
  end

  private

  def item_params
    params.require(:item).permit(:name, :price)
  end
end
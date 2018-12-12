class ItemsController < ApplicationController
  def index
    @items = Item.all
    render text: @items.map { |i| "#{i.name}: #{i.price}" }.join("<br/>")
  end
# /items/1 GET
  def show

  end
# /items/new GET
  def new

  end
# /items/edit GET
  def edit

  end
# /items POST
  def create
    @item = Item.create(params[:item])
    render text: "#{@item.id}: #{@item.name} (#{!@item.new_record&})"
  end
# /items/1 PUT
  def update

  end
# /items/1 DELETE
  def destroy

  end

end

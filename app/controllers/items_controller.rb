class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @items = Item.all
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @item = Item.new
    respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save
    respond_with(@item)
  end

  def update
    @item.update(item_params)
    @next = @item.next
    respond_to do |format|
      format.html { 
        if @next.nil?
          redirect_to address_batch_path(@item.batch)
        else
          redirect_to edit_item_path(@item.next) 
        end
      }
    end
  end

  def destroy
    @batch = @item.batch
    @item.destroy
    respond_with(@batch)
  end

  def preview_images
    @image_urls = params[:image_urls]
    puts @image_urls
    respond_to do |format|
      format.js
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:batch_id, :name, :brand, :price, :color, :age, :blemishes, :original_price, :url, :description, :filepicker_image_urls)
    end
end

class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @batches = Batch.all
    respond_with(@batches)
  end

  def show
    respond_with(@batch)
  end

  def new
    @batch = Batch.new
    respond_with(@batch)
  end

  def edit
  end

  def create
    @batch = Batch.new(batch_params)
    @batch.save
    # @batch.item_names.split(',').each do |item|
    #   Item.create!(batch: @batch, name: item)
    # end
    @batch.items.each do |item|
      if item.name.blank?
        item.destroy
      end
    end
    respond_to do |format|
      format.html { redirect_to edit_item_path(@batch.items.first)}
    end
  end

  def update
    @batch.update(batch_params)
    respond_with(@batch)
  end

  def destroy
    @batch.destroy
    respond_with(@batch)
  end

  private
    def set_batch
      @batch = Batch.find(params[:id])
    end

    def batch_params
      params.require(:batch).permit(:user_id, :expiration_date, :item_names, items_attributes: [:id, :name, :_destroy])
    end
end

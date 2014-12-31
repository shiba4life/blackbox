class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update, :destroy, :address, :activate]

  respond_to :html

  def index
    if current_user
      @batches = current_user.batches
    end
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

  def address
  end

  def create
    @batch = Batch.new(batch_params)

    session[:batch_id] = @batch.id
    @batch.save
    respond_to do |format|
      format.html { redirect_to edit_item_path(@batch.items.first)}
    end
  end

  def update
    @batch.update(batch_params)
    if !@batch.lat.blank? && !@batch.lng.blank?
      if !current_user
        redirect_to new_user_registration_path and return
      else
        @batch.update(user_id: current_user.id)
        redirect_to @batch and return
      end
    else
      respond_with(@batch)
    end
  end

  def activate
    @batch.items.each do |item|
      item.update(status: "active")
    end
  end

  def destroy
    @batch.destroy
    respond_with(@batch)
  end

  private
    def clear_blank
      @batch.items.each do |item|
        if item.name.blank?
          item.destroy
        end
      end
    end

    def set_batch
      @batch = Batch.find(params[:id])
      @batch.items.each do |item|
        if item.name.blank?
          item.destroy
        end
      end
    end

    def batch_params
      params.require(:batch).permit(:user_id, :address, :lat, :lng, :expiration_date, :item_names, items_attributes: [:id, :name, :_destroy])
    end
end

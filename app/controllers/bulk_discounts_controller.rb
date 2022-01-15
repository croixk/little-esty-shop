class BulkDiscountsController < ApplicationController

  def index
    @bulk_discounts = BulkDiscount.where(bulk_discount_params)
  end

  def new

  end

  def create
    bulk_discount = BulkDiscount.new(bulk_discount_params)

    if bulk_discount.valid?
        bulk_discount.save!
        redirect_to "/merchants/#{params[:merchant_id].to_i}/bulk_discounts", notice: "Bulk discount created."
    else
        flash[:alert] = bulk_discount.errors.full_messages.join("") + "!"
        render :new
      end
    end

    def destroy
      BulkDiscount.find_by(bulk_discount_params).delete

      redirect_to "/merchants/#{params[:merchant_id].to_i}/bulk_discounts",  notice: "Bulk discount destroyed."
    end

    private

    def bulk_discount_params
        params.permit(:percent_off, :quantity_threshold, :merchant_id)
    end
end

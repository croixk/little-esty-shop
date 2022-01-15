class MerchantInvoicesController < ApplicationController
  def index
    @merchant = Merchant.find(params[:id])
  end

  def show
    @invoice = Invoice.find(params[:id])
    @merchant = Merchant.find(params[:merchant_id])
  end

  def update
    invoice_item = InvoiceItem.find(params[:invoice_item_id])

    invoice_item.update(status: params[:new_invoice_item_status])

    redirect_to "/merchants/#{params[:merchant_id]}/invoices/#{params[:invoice_id]}"
  end
end

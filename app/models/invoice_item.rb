class InvoiceItem < ApplicationRecord
  belongs_to(:invoice)
  belongs_to(:item)

  has_many :discounts, through: :items

  enum status: { "pending" => 0, "packaged" => 1, "shipped" => 2 }

  def item_discount(invoice_item_id)

    discounts = Discount.order(:min_quantity)
    invoice_item = InvoiceItem.find(invoice_item_id)
    return_discount = nil

    discounts.each do |discount|
      if invoice_item.quantity >= discount.min_quantity
        return_discount = discount
      end
    end

    return_discount

    # Discount.joins(merchant: {items: :invoice_items})
    # .where(invoice_items: {item_id: item.id})
    # .where('invoice_items.quantity > min_quantity')
    # .order(:min_quantity)
    # .first

  end

end

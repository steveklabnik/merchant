class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates_presence_of :order_id, :product_id

  def subtotal
    quantity * product.price
  end
end

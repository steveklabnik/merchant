class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy

  def total
    order_items.inject(0) do |price, oi|
      price += oi.subtotal
    end
  end
end

class LineItem < ActiveRecord::Base
	# The same with 2 model Product and Cart.
	# Product model and Card model will describe detail.
  belongs_to :product
  belongs_to :cart
  def total_price
	product.price * quantity
  end
end

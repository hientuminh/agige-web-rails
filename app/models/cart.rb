class Cart < ActiveRecord::Base
	# a cart (potentially) has many associated line items.
	# Su ton tai cua line_item phu thuoc vao su ton tai cart
	# Neu xoa 1 cart thi phai xoa line_item truoc
	# The hien moi quan he product:references cart:belongs_to
	has_many :line_items, dependent: :destroy
end

require_relative './part_1_solution.rb'
require 'pry'
def apply_coupons(cart, coupons)
  counter = 0
  while counter < coupons.length
    cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
    discount_item_name = "#{coupons[counter][:item]} W/COUPON"
    items_with_coupon = find_item_by_name_in_collection(discount_item_name, cart)
    if cart_item && cart_item[:count] >= coupons[counter][:num]
      if items_with_coupon
        items_with_coupon[:count] += coupons[counter][:num]
        cart_item[:count] -= coupons[counter][:num]
      else
        items_with_coupon = {
          :item => discount_item_name,
          :price => coupons[counter][:cost] / coupons[counter][:num],
          :count => coupons[counter][:num],
          :clearance => cart_item[:clearance]
        }
        cart << items_with_coupon
        cart_item[:count] -= coupons[counter][:num]
      end
    end
    counter += 1
  end
  cart
end
#returns new_array = [{}]


def apply_clearance(cart)
  counter = 0
  while counter < cart[counter].length
    
  end
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end

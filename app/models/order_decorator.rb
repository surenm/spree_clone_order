Spree::Order.class_eval do
  def duplicate
    # clone addresses
    new_shipping_address = shipping_address.dup
    new_billing_address = billing_address.dup

    new_shipping_address.save!
    new_billing_address.save!

    # Create a new order
    new_order = Spree::Order.new

    # reset shipping and billing addresses
    new_order.shipping_address = new_shipping_address
    new_order.billing_address = new_billing_address

    # calculate totals once
    new_order.update!

    # Save the new order
    new_order.save!

    return new_order
  end
end
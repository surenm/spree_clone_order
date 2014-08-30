Deface::Override.new(
  virtual_path: 'spree/admin/orders/edit',
  name: 'add_clone_button_to_orders',
  insert_before: "code[erb-silent]:contains('can?(:admin, Spree::Order)')",
  partial: 'spree/admin/orders/duplicate',
  disabled: false
)
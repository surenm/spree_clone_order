Spree::Admin::OrdersController.class_eval do
  alias :load_order_for_duplicate :load_order
  before_filter :load_order_for_duplicate, :only => [:duplicate]

  def duplicate
    new_order = @order.duplicate
    redirect_to action: 'edit', id: new_order.number
  end
end
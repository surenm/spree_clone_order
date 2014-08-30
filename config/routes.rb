Spree::Core::Engine.routes.draw do
  match 'admin/orders/duplicate/:id', to: 'admin::orders#duplicate'
end

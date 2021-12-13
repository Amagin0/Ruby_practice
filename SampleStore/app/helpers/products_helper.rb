module ProductsHelper

  def search_pass(category=nil)
    if action_name == "cart"
      cart_orders_path(category)
    else
      products_path(category)
    end
  end
end

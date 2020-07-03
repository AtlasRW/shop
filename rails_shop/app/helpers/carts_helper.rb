module CartsHelper
  def cart_author(cart)
    user_signed_in? && current_user.id == cart.user_id
  end
end

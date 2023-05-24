class OrdersController < InheritedResources::Base
  def index
    @product = Product.find_by(id: params[:product_id])
    @orders = @product.orders.all
  end

  private

    def order_params
      params.require(:order).permit(:user_id, :product_id)
    end

end

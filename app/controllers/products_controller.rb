class ProductsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @product = Product.new(product_params)
     @product.user_id = current_user.id
     respond_to do |format|
       if @product.save
         format.html { redirect_to @product, notice: 'Product was successfully created.' }
       else
         format.html { render :new }
       end
     end
  end

  private

    def product_params
      params.require(:product).permit(:image, :name, :description, :price, :user_id)
    end
end

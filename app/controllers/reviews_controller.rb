class ReviewsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:edit, :update, :destroy]
  before_action :set_product

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.product_id = @product.id
    respond_to do |format|
      if @review.save
        format.html { redirect_to root_path, notice: 'Successfully created a review.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment, :user_id, :product_id)
  end
end

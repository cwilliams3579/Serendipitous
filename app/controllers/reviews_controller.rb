class ReviewsController < InheritedResources::Base
  before_action authenticate_user! except: [:index, :show]

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Successfully created a review.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :user_id)
  end
end

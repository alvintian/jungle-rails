class ReviewsController < ApplicationController
    
  def create
    review = Review.new(review_params)
   if review.save
     redirect_to :back
   else
     redirect_to :back
   end
  end

  def destroy
    @review = Review.find(params[:id])
  @review.destroy
  redirect_to :back
  end


  private
  def review_params
    params.require(:product_reviews).permit(:product_id, :user_id, :description, :rating)
  end

end
class ReviewsController < ApplicationController
    before_action :correct_user, only: [:destroy]
  
  def new
    @review = User.find(params[:id]).reviews.build
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.find(params[:id])
    @review = User.find(params[:id]).reviews.build(review_params)
    if @review.save
      flash[:success] = 'レビューありがとう！'
      redirect_to chart_url
    else
      flash.now[:danger] = 'レビューの投稿に失敗しました'
      render 'reviews/new'
    end
  end
  
  def destroy
    @destroy_reviews.destroy_all
    flash[:success] = 'レビューをリセットしました。'
    redirect_back(fallback_location: root_path)
  end

  
  private

  def review_params
    params.require(:review).permit(:kind, :cool, :cute, :fashion, :smart, :fun, :comment)
  end
  
  
  def correct_user
    @destroy_reviews = current_user.reviews
    unless @destroy_reviews
      redirect_to root_url
    end
  end
  

end

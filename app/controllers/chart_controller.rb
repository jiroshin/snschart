class ChartController < ApplicationController

  def show
    @user = User.find(params[:id])
    @reviews = User.find(params[:id]).reviews
    
    @kind = User.find(params[:id]).reviews.average(:kind)
    @cool = User.find(params[:id]).reviews.average(:cool)
    @cute = User.find(params[:id]).reviews.average(:cute)
    @fashion = User.find(params[:id]).reviews.average(:fashion)
    @smart = User.find(params[:id]).reviews.average(:smart)
    @fun = User.find(params[:id]).reviews.average(:fun)
  end


end

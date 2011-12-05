class ReviewsController < ApplicationController
  before_filter :find_destination
  
  # POST /destinations/:destination_id/reviews/
  def create
    @destination.reviews.create(params[:review])
     redirect_to @destination, notice: 'Review was successfully created.'
  end
  def edit 
    puts  "hello"
  end

  private 
  
  def find_destination
    @destination = Destination.find(params[:destination_id])
  end

end
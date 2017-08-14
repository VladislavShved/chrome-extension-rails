class CountersController < ApplicationController
  def index
  	@counter = Counter.find_by(browser_id: params[:id])
  	render json: @counter, status: 200
  end

  def create
  	@counter = Counter.create(browser_id: params[:id], count_number: params[:value])
  	render json: @counter, status: 201
  end

  def update
  	@counter = Counter.find_by(browser_id: params[:id])
  	@counter.update(count_number: params[:value])
  	render json: @counter
  end
end

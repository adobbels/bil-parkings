class ParkingsController < ApplicationController

  def index
  @parkings = Parking.where(status: "Available").sort_by{ |p| [p.stamp] }.reverse!
  @parking = @parkings.last
  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

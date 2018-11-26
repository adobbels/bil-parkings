class ParkingsController < ApplicationController

  def index
  @parkings = Parking.where(status: "Available").sort_by{ |p| [p.stamp] }.reverse!
  @parking = @parkings.last
  end

  def show
    parking = Parking.find(params[:id])
    @MyBookings = Booking.all.where(parking_id: parking.id)
    @profile = current_user.profile
  end

  def state
    @parking = Parking.find(params[:id])
    @profile = current_user.profile
    if @parking.status == "Available"
      @parking.status = "Not Available"
      @parking.stamp = ""
      @parking.save
      flash[:alert] = 'Parking Not Available.'
    elsif
      @parking.status == "Not Available"
      @parking.status = "Available"
      @parking.stamp = DateTime.now.strftime('%s').to_i
      @parking.save
      flash[:notice] = 'Parking Available.'
    end
      redirect_to profile_path(@profile)



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

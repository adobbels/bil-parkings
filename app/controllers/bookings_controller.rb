class BookingsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @profile = current_user.profile
    @parking = Parking.find(params[:parking_id])
    # @booking = Booking.new(booking_params)
    @booking = Booking.new
    @booking.parking = @parking
    @booking.profile = @profile
    # authorize @booking

    if @profile.nil?
      flash[:alert] = 'Please complete your profile before booking.'
      return redirect_to new_profile_path(@profile)
    end

    if @booking.save
      flash[:notice] = 'Booking was successfully created.'
      # BookingMailer.creation_confirmation(@booking).deliver_now
      # BookingAdminMailer.admin_creation_confirmation(@booking).deliver_now
       @parking.status = "Not Available"
       @parking.save
       redirect_to profile_path(@profile)
    else
      flash[:alert] = 'Booking has been not created'
      # BookingMailer.no_creation_confirmation(@booking).deliver_now
      # BookingAdminMailer.admin_no_creation_confirmation(@booking).deliver_now
      redirect_to parking_path(@parking)
    end

  end




  def edit
  end

  def update
  end

  def destroy
  end

  # private

  # def booking_params
  #   params.require(:booking).permit(:start_date, :end_date, :status)
  # end


end

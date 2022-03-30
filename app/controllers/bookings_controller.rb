class BookingsController < ApplicationController
  before_action :set_castle, only: [:new, :create]
  before_action :set_booking, except: [:index, :new]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    authorize @castle
  end

  def create
    @booking = Booking.new(booking_params)
#    @user = User.find(params[:user_id])
    @booking.castle = @castle
    @booking.user = current_user
    if @booking.save
      redirect_to castle_booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
    authorize @booking
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :castle_id)
  end

  def set_castle
    @castle = Castle.find(params[:castle_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end

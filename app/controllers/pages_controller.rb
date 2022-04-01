class PagesController < ApplicationController
  def home
  end

  def dashboard
    @castles = Castle.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @castle = Castle.new
    @user = current_user
    @rents_demands = []
    @rents = Booking.all
    @rents.each do |rent|
      @rents_demands << rent if rent.castle.user == @user
    end
  end
end

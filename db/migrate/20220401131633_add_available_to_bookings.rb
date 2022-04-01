class AddAvailableToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :available, :boolean, default: true
  end
end

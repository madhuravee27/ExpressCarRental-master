class PickupfailureJob < ApplicationJob
  queue_as :urgent

  def perform(reservation)
    @reservation = reservation
    if @reservation.current == true && @reservation.status == false

      @reservation.car.update_attribute(:carstatus, 'Available')

      @reservation.update_attribute(:current, false)
    end
  end
end

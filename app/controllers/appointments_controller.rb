class AppointmentsController < ApplicationController
    def show
        @apmt=Appointment.find(params[:id])
    end
end

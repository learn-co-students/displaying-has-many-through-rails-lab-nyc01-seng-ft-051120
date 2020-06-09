class AppointmentsController < ApplicationController
   before_action :find_appointment, only: [:edit, :show, :update, :destroy]
    
   def show
    end

    def index
        @appointments = Appointment.all
    end

    private
    def find_appointment
        @appointment = Appointment.find(params[:id])
    end
end

class DoctorsController < ApplicationController
    before_action :find_doctor, only: [:edit, :show, :update, :destroy]
    def index
        @doctors = Doctor.all
    end
    
    def show
    end

    def create
        @doctor = Doctor.create(doctor_params)
        redirect_to doctor_path(@doctor.id)
    end

private

def find_doctor
    @doctor = Doctor.find(params[:id])
end
    
end

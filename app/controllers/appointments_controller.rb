class AppointmentsController < ApplicationController
  before_action :set_doctor

  def index
    # @users = @doctor.appointments
  end

  def new
    @appointment = @doctor.appointment.new
  end

  def create
    @appointment = @doctor.appointment.new(appointment_params)

    if @appointment.save
      redirect_to doctor_appointments_path(@doctor)
    else
      render :new
    end
  end

  def destroy
    @appointment = @doctor.appointment.find(params[:id])
    @appointment.destroy
    redirect_to doctor_appointments_path(@doctor)
  end

  private
    def set_doctor
      @appointment = Doctor.find(params[:doctor_id])
    end

    def appointment_params
      params.require(:appointment).permit(:date, :user_id)
    end
end

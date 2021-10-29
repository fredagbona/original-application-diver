class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[ show edit update  create_appointment ]
  before_action :doctor_required, only: [:new, :create, :edit, :destroy]
  before_action :authenticate_user!
  
  def index
    @doctors = Doctor.all
  end
  def new
    @doctor = Doctor.new
  end

  def show
    
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.user_id = current_user.id

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to profile_index_path, notice: "Infos was successfully added." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  def appointment
    @appointment = Appointment.new
  end

  def create_appointment
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.doctor = @doctor
  
    
    respond_to do |format|
 
      if @appointment.save
        AppointmentMailer.new_appointment_mail(@appointment).deliver_later
        format.html { redirect_to profile_index_path, notice: "Appointment was successfully created." }
 
      else
        format.html { render :appointment, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
        
      end
    end
  end
  def edit
  end

  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to profile_index_path, notice: "Informations was successfully updated." }
        
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:speciality, :hourly)
    end
    def appointment_params
      params.require(:appointment).permit(:message, :date)
    end
end

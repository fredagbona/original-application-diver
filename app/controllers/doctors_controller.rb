class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[ show edit update  ]
  before_action :doctor_required, only: [:new, :create, :edit, :destroy]
 
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

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
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
  
end

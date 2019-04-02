class PatientsController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @patient = Patient.new
  end

  def create
    current_user.build_patient(patient_params)
    if current_user.save
      redirect_to current_user.patient
    else
      render 'new'
    end
  end

  def show
    @patient = current_user.patient
  end

  private

  def patient_params
    params.require(:patient).permit(:name)
  end
end

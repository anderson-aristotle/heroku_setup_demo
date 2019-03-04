# frozen_string_literal: true

class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient
  end
  def create
      @patient = Patient.new(patient_params)

      if @patient.save
        render json: @patient, status: :created
      else
        render json: @patient.errors, status: :unprocessable_entity
      end
    end

    def update
      @patient = Patient.find(params[:id])

      def update
        if @patient.update(patient_params)
          render json: @patient
        else
          render json: @patient.errors, status: :unprocessable_entity
        end
      end

    end


    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on)
    end

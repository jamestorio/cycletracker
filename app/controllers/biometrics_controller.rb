class BiometricsController < ApplicationController
  before_action :set_biometric, only: [:show, :edit, :update, :destroy]

  # GET /biometrics
  # GET /biometrics.json
  def index
    @biometrics = Biometric.all
  end

  # GET /biometrics/1
  # GET /biometrics/1.json
  def show
  end

  # GET /biometrics/new
  def new
    @biometric = Biometric.new
  end

  # GET /biometrics/1/edit
  def edit
  end

  # POST /biometrics
  # POST /biometrics.json
  def create
    @biometric = Biometric.new(biometric_params)

    respond_to do |format|
      if @biometric.save
        format.html { redirect_to @biometric, notice: 'Biometric was successfully created.' }
        format.json { render action: 'show', status: :created, location: @biometric }
      else
        format.html { render action: 'new' }
        format.json { render json: @biometric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biometrics/1
  # PATCH/PUT /biometrics/1.json
  def update
    respond_to do |format|
      if @biometric.update(biometric_params)
        format.html { redirect_to @biometric, notice: 'Biometric was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @biometric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biometrics/1
  # DELETE /biometrics/1.json
  def destroy
    @biometric.destroy
    respond_to do |format|
      format.html { redirect_to biometrics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biometric
      @biometric = Biometric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biometric_params
      params.require(:biometric).permit(:date, :weight, :bmi, :note, :time)
    end
end

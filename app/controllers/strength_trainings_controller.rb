class StrengthTrainingsController < ApplicationController
  before_action :set_strength_training, only: [:show, :edit, :update, :destroy]

  # GET /strength_trainings
  # GET /strength_trainings.json
  def index
    @strength_trainings = StrengthTraining.all
  end

  # GET /strength_trainings/1
  # GET /strength_trainings/1.json
  def show
  end

  # GET /strength_trainings/new
  def new
    @strength_training = StrengthTraining.new
  end

  # GET /strength_trainings/1/edit
  def edit
  end

  # POST /strength_trainings
  # POST /strength_trainings.json
  def create
    @strength_training = StrengthTraining.new(strength_training_params)

    respond_to do |format|
      if @strength_training.save
        format.html { redirect_to @strength_training, notice: 'Strength training was successfully created.' }
        format.json { render action: 'show', status: :created, location: @strength_training }
      else
        format.html { render action: 'new' }
        format.json { render json: @strength_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strength_trainings/1
  # PATCH/PUT /strength_trainings/1.json
  def update
    respond_to do |format|
      if @strength_training.update(strength_training_params)
        format.html { redirect_to @strength_training, notice: 'Strength training was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @strength_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strength_trainings/1
  # DELETE /strength_trainings/1.json
  def destroy
    @strength_training.destroy
    respond_to do |format|
      format.html { redirect_to strength_trainings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strength_training
      @strength_training = StrengthTraining.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def strength_training_params
      params.require(:strength_training).permit(:date, :push_up, :sit_up, :toe_raise, :squat, :leg_extension, :curl, :tricep_exstension, :should_press, :lat_pulldown, :bench_press, :seated_row, :peck_fly)
    end
end

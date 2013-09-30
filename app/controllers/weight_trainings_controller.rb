class WeightTrainingsController < ApplicationController
  before_action :set_weight_training, only: [:show, :edit, :update, :destroy]

  # GET /weight_trainings
  # GET /weight_trainings.json
  def index
    @weight_trainings = WeightTraining.all
  end

  # GET /weight_trainings/1
  # GET /weight_trainings/1.json
  def show
  end

  # GET /weight_trainings/new
  def new
    @weight_training = WeightTraining.new
    @exercise_types = ExerciseType.all
  end

  # GET /weight_trainings/1/edit
  def edit
  end

  # POST /weight_trainings
  # POST /weight_trainings.json
  def create
    @weight_training = WeightTraining.new(weight_training_params)

    respond_to do |format|
      if @weight_training.save
        format.html { redirect_to @weight_training, notice: 'Weight training was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weight_training }
      else
        format.html { render action: 'new' }
        format.json { render json: @weight_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_trainings/1
  # PATCH/PUT /weight_trainings/1.json
  def update
    respond_to do |format|
      if @weight_training.update(weight_training_params)
        format.html { redirect_to @weight_training, notice: 'Weight training was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weight_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_trainings/1
  # DELETE /weight_trainings/1.json
  def destroy
    @weight_training.destroy
    respond_to do |format|
      format.html { redirect_to weight_trainings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_training
      @weight_training = WeightTraining.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_training_params
      params.require(:weight_training).permit(:date, :push_up, :sit_up, :toe_raise, :squat, :leg_extension, :curl, :tricep_exstension, :should_press, :lat_pulldown, :bench_press, :seated_row, :peck_fly)
    end
end

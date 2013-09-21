class WeightTrainningsController < ApplicationController
  before_action :set_weight_trainning, only: [:show, :edit, :update, :destroy]

  # GET /weight_trainnings
  # GET /weight_trainnings.json
  def index
    @weight_trainnings = WeightTrainning.all
  end

  # GET /weight_trainnings/1
  # GET /weight_trainnings/1.json
  def show
  end

  # GET /weight_trainnings/new
  def new
    @weight_trainning = WeightTrainning.new
  end

  # GET /weight_trainnings/1/edit
  def edit
  end

  # POST /weight_trainnings
  # POST /weight_trainnings.json
  def create
    @weight_trainning = WeightTrainning.new(weight_trainning_params)

    respond_to do |format|
      if @weight_trainning.save
        format.html { redirect_to @weight_trainning, notice: 'Weight trainning was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weight_trainning }
      else
        format.html { render action: 'new' }
        format.json { render json: @weight_trainning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_trainnings/1
  # PATCH/PUT /weight_trainnings/1.json
  def update
    respond_to do |format|
      if @weight_trainning.update(weight_trainning_params)
        format.html { redirect_to @weight_trainning, notice: 'Weight trainning was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weight_trainning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_trainnings/1
  # DELETE /weight_trainnings/1.json
  def destroy
    @weight_trainning.destroy
    respond_to do |format|
      format.html { redirect_to weight_trainnings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_trainning
      @weight_trainning = WeightTrainning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_trainning_params
      params.require(:weight_trainning).permit(:pushup, :situp, :toe_raise, :squat, :leg_extension, :curl, :tricep_extension, :shoulder_press, :lat_pulldown, :bench_press, :seated_row, :peck_fly)
    end
end

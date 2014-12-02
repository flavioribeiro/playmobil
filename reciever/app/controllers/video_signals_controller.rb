class VideoSignalsController < ApplicationController
  before_action :set_video_signal, only: [:show, :edit, :update, :destroy]

  # GET /video_signals
  # GET /video_signals.json
  def index
    @video_signals = VideoSignal.all
  end

  # GET /video_signals/1
  # GET /video_signals/1.json
  def show
  end

  # GET /video_signals/new
  def new
    @video_signal = VideoSignal.new
  end

  # GET /video_signals/1/edit
  def edit
  end

  # POST /video_signals
  # POST /video_signals.json
  def create
    @video_signal = VideoSignal.new(video_signal_params)
    @ingest = Ingest.last.host
    @video_signal.source = @ingest
    respond_to do |format|
      if @video_signal.save
        format.html { redirect_to @video_signal, notice: 'Video signal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @video_signal }
      else
        format.html { render action: 'new' }
        format.json { render json: @video_signal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_signals/1
  # PATCH/PUT /video_signals/1.json
  def update
    respond_to do |format|
      if @video_signal.update(video_signal_params)
        format.html { redirect_to @video_signal, notice: 'Video signal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video_signal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_signals/1
  # DELETE /video_signals/1.json
  def destroy
    @video_signal.destroy
    respond_to do |format|
      format.html { redirect_to video_signals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_signal
      @video_signal = VideoSignal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_signal_params
      params.require(:video_signal).permit(:name)
    end
end

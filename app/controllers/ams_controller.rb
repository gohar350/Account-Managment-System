class AmsController < ApplicationController
  before_action :set_am, only: %i[ show edit update destroy ]

  # GET /ams or /ams.json
  def index
    @ams = Am.all
  end

  # GET /ams/1 or /ams/1.json
  def show
  end

  # GET /ams/new
  def new
    @am = Am.new
  end

  # GET /ams/1/edit
  def edit
  end

  # POST /ams or /ams.json
  def create
    @am = Am.new(am_params)

    respond_to do |format|
      if @am.save
        format.html { redirect_to am_url(@am), notice: "Am was successfully created." }
        format.json { render :show, status: :created, location: @am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ams/1 or /ams/1.json
  def update
    respond_to do |format|
      if @am.update(am_params)
        format.html { redirect_to am_url(@am), notice: "Am was successfully updated." }
        format.json { render :show, status: :ok, location: @am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ams/1 or /ams/1.json
  def destroy
    @am.destroy

    respond_to do |format|
      format.html { redirect_to ams_url, notice: "Am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_am
      @am = Am.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def am_params
      params.require(:am).permit(:headline, :cinfo)
    end
end

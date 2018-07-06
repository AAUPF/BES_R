class HhsController < ApplicationController
  before_action :set_hh, only: [:show, :edit, :update, :destroy]

  # GET /hhs
  # GET /hhs.json
  def index
    @hhs = Hh.all
  end

  # GET /hhs/1
  # GET /hhs/1.json
  def show
  end

  # GET /hhs/new
  def new
    @hh = Hh.new
  end

  # GET /hhs/1/edit
  def edit
  end

  # POST /hhs
  # POST /hhs.json
  def create
    @hh = Hh.new(hh_params)

    respond_to do |format|
      if @hh.save
        format.html { redirect_to @hh, notice: 'Hh was successfully created.' }
        format.json { render :show, status: :created, location: @hh }
      else
        format.html { render :new }
        format.json { render json: @hh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hhs/1
  # PATCH/PUT /hhs/1.json
  def update
    respond_to do |format|
      if @hh.update(hh_params)
        format.html { redirect_to @hh, notice: 'Hh was successfully updated.' }
        format.json { render :show, status: :ok, location: @hh }
      else
        format.html { render :edit }
        format.json { render json: @hh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hhs/1
  # DELETE /hhs/1.json
  def destroy
    @hh.destroy
    respond_to do |format|
      format.html { redirect_to hhs_url, notice: 'Hh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hh
      @hh = Hh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hh_params
      params.require(:hh).permit(:name)
    end
end

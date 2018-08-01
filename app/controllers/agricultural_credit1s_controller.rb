class AgriculturalCredit1sController < ApplicationController
  before_action :set_agricultural_credit1, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_credit1s
  def index
    @agricultural_credit1s = AgriculturalCredit1.all
  end

  # GET /agricultural_credit1s/1
  def show
  end

  # GET /agricultural_credit1s/new
  def new
    @agricultural_credit1 = AgriculturalCredit1.new
  end

  def test
    # ji = [:Year, :Commercial_Bank_Target, :Commercial_Bank_Achievement, :RRBs_Target, :RRBs_Achievement, :CCBs_Target, :CCBs_Achievement, :Total_Target, :Total_Achievement]
    rain_fall_type = params[:rain_fall_type]
    if rain_fall_type == "All"
      ji = [:Commercial_Bank_Target, :Commercial_Bank_Achievement, :RRBs_Target, :RRBs_Achievement, :CCBs_Target, :CCBs_Achievement]
    else
      ji = [:Commercial_Bank_Target, :Commercial_Bank_Achievement, :RRBs_Target, :RRBs_Achievement, :CCBs_Target, :CCBs_Achievement, :Total_Target, :Total_Achievement]
    end
    ji1 = [:Commercial_Bank_Target, :Commercial_Bank_Achievement, :RRBs_Target, :RRBs_Achievement, :CCBs_Target, :CCBs_Achievement, :Total_Target, :Total_Achievement]
    views = params[:views]
    year = params[:year]
    compare = params[:compare]

    if rain_fall_type || views

      if views == "Map View"
        l = rain_fall_type.gsub(" ", "")
        if rain_fall_type == "All"
          b = AgriculturalCredit1.map_search("All", compare, year, rain_fall_type)
          u = "Total"
          a = AgriculturalCredit1.map(b, params[:year], rain_fall_type, views)
        else
          b = AgriculturalCredit1.map_search(params[:search], compare, year, rain_fall_type)
          a = AgriculturalCredit1.map(b, rain_fall_type, year, ji)
        end
      elsif views == "Table"
        b = AgriculturalCredit1.search(params[:search], compare, year, rain_fall_type)
        a = AgriculturalCredit1.table(b, rain_fall_type, year, ji1, compare)
      else
        @AgriculturalCredit1s = AgriculturalCredit1.search(params[:search], compare, year, rain_fall_type)
        a = AgriculturalCredit1.query(@AgriculturalCredit1s, params[:year], rain_fall_type, views, ji, compare)
      end
      respond_to do |format|
        format.html {render json: a}
      end

    else
      respond_to do |format|
        format.html {render json: "error"}
      end
    end

  end


  def import
    # Module1.import(params[:file])
    AgriculturalCredit1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_credit1s/1/edit
  def edit
  end

  # POST /agricultural_credit1s
  def create
    @agricultural_credit1 = AgriculturalCredit1.new(agricultural_credit1_params)

    if @agricultural_credit1.save
      redirect_to @agricultural_credit1, notice: 'Agricultural credit1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_credit1s/1
  def update
    if @agricultural_credit1.update(agricultural_credit1_params)
      redirect_to @agricultural_credit1, notice: 'Agricultural credit1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_credit1s/1
  def destroy
    @agricultural_credit1.destroy
    redirect_to agricultural_credit1s_url, notice: 'Agricultural credit1 was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_agricultural_credit1
    @agricultural_credit1 = AgriculturalCredit1.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def agricultural_credit1_params
    params.require(:agricultural_credit1).permit(:Year, :Commercial_Bank_Target, :Commercial_Bank_Achievement, :RRBs_Target, :RRBs_Achievement, :CCBs_Target, :CCBs_Achievement, :Total_Target, :Total_Achievement)
  end
end

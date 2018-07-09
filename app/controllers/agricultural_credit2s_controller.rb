class AgriculturalCredit2sController < ApplicationController
  before_action :set_agricultural_credit2, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_credit2s
  def index
    @agricultural_credit2s = AgriculturalCredit2.all
  end

  # GET /agricultural_credit2s/1
  def show
  end

  # GET /agricultural_credit2s/new
  def new
    @agricultural_credit2 = AgriculturalCredit2.new
  end


  def test

    ji = [:Target_2014, :Target_2015, :Target_2016, :Achievement_2014, :Achievement_2015, :Achievement_2016]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = ""
     compare = params[:compare]

    if rain_fall_type || views

        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")
          if year == "2016"
            j = "#{l}_2016"
          elsif year == "2017"
            j = "#{l}_2017"
          else
            puts "no year"
          end  
           
           if rain_fall_type  ==  "All"
           

            if year == "2016"
              j = "Total_2016"
            elsif year == "2017"
              j = "Total_2017"
            else
              puts "no year"
            end  
            b = AgriculturalCredit2.map_search(rain_fall_type)
            u = "Total"
            a = AgriculturalCredit2.map(b,u,year)
           else
            b = AgriculturalCredit2.map_search(rain_fall_type)
            a = AgriculturalCredit2.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = AgriculturalCredit2.search(params[:search],compare)

          a = AgriculturalCredit2.table(b,rain_fall_type,year)
        else
          @AgriculturalCredit2s = AgriculturalCredit2.search(params[:search],compare)
          a = AgriculturalCredit2.query(@AgriculturalCredit2s,params[:year],rain_fall_type,views,compare,ji)
        end
       
        respond_to do |format|
          format.html { render json:a }
      end

    else
      respond_to do |format|
        format.html { render json: "error"}
    end
  end

end


  def import
    # Module1.import(params[:file])
    AgriculturalCredit2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_credit2s/1/edit
  def edit
  end

  # POST /agricultural_credit2s
  def create
    @agricultural_credit2 = AgriculturalCredit2.new(agricultural_credit2_params)

    if @agricultural_credit2.save
      redirect_to @agricultural_credit2, notice: 'Agricultural credit2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_credit2s/1
  def update
    if @agricultural_credit2.update(agricultural_credit2_params)
      redirect_to @agricultural_credit2, notice: 'Agricultural credit2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_credit2s/1
  def destroy
    @agricultural_credit2.destroy
    redirect_to agricultural_credit2s_url, notice: 'Agricultural credit2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_credit2
      @agricultural_credit2 = AgriculturalCredit2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_credit2_params
      params.require(:agricultural_credit2).permit(:Districts, :Target_2014, :Target_2015, :Target_2016, :Achievement_2014, :Achievement_2015, :Achievement_2016)
    end
end

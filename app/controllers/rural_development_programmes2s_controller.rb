class RuralDevelopmentProgrammes2sController < ApplicationController
  before_action :set_rural_development_programmes2, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes2s
  def index
    @rural_development_programmes2s = RuralDevelopmentProgrammes2.all
  end

  # GET /rural_development_programmes2s/1
  def show
  end

  # GET /rural_development_programmes2s/new
  def new
    @rural_development_programmes2 = RuralDevelopmentProgrammes2.new
  end

def test
  ji = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
   ji1 = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
 
 
   if views != "Table"
 
 
     data = [
      "No. of job cards issued (lakh)",
      "No. of households provided with employment (lakh)",
      "No. of households obtaining 100 days of employment (lakh)",
      "Employment generated (lakh persondays)",
      "Percentage share of women in total employment generated",
      "Average employment per household (persondays)",
      "Fund utilized (percentage)",
      "No. of  accounts opened (in lakh)"
 ]
 
     
   else
 
     data = [
      "No. of job cards issued (lakh)",
      "No. of households provided with employment (lakh)",
      "No. of households obtaining 100 days of employment (lakh)",
      "Employment generated (lakh persondays)",
      "Percentage share of women in total employment generated",
      "Average employment per household (persondays)",
      "Number of completed works",
      "Fund utilized (percentage)",
      "No. of  accounts opened (in lakh)"
     ]
 
     
   end

   legend = "Performance"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes2.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes2.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes2.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes2.new_table(b, rain_fall_type, year, ji1, compare, search, data,legend)
      else
        # @RuralDevelopmentProgrammes2s = RuralDevelopmentProgrammes2.search(params[:search],compare,year,rain_fall_type)
        # a = RuralDevelopmentProgrammes2.query(@RuralDevelopmentProgrammes2s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
        @RuralDevelopmentProgrammes2s = RuralDevelopmentProgrammes2.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes2.query(@RuralDevelopmentProgrammes2s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    RuralDevelopmentProgrammes2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes2s/1/edit
  def edit
  end

  # POST /rural_development_programmes2s
  def create
    @rural_development_programmes2 = RuralDevelopmentProgrammes2.new(rural_development_programmes2_params)

    if @rural_development_programmes2.save
      redirect_to @rural_development_programmes2, notice: 'Rural development programmes2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes2s/1
  def update
    if @rural_development_programmes2.update(rural_development_programmes2_params)
      redirect_to @rural_development_programmes2, notice: 'Rural development programmes2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes2s/1
  def destroy
    @rural_development_programmes2.destroy
    redirect_to rural_development_programmes2s_url, notice: 'Rural development programmes2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes2
      @rural_development_programmes2 = RuralDevelopmentProgrammes2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes2_params
      params.require(:rural_development_programmes2).permit(:Performance, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end

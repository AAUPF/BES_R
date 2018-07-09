class AnimalHusbandry5sController < ApplicationController
  before_action :set_animal_husbandry5, only: [:show, :edit, :update, :destroy]

  # GET /animal_husbandry5s
  def index
    @animal_husbandry5s = AnimalHusbandry5.all
  end

  # GET /animal_husbandry5s/1
  def show
  end

  # GET /animal_husbandry5s/new
  def new
    @animal_husbandry5 = AnimalHusbandry5.new
  end


  def test

    ji = [:Districts, :Fish_Production_2014, :Fish_Seeds_2014, :Fish_Production_2015, :Fish_Seeds_2015, :Fish_Production_2016, :Fish_Seeds_2016]
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
            b = AnimalHusbandry5.map_search(rain_fall_type)
            u = "Total"
            a = AnimalHusbandry5.map(b,u,year)
           else
            b = AnimalHusbandry5.map_search(rain_fall_type)
            a = AnimalHusbandry5.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = AnimalHusbandry5.search(params[:search],compare)

          a = AnimalHusbandry5.table(b,rain_fall_type,year)
        else
          @AnimalHusbandry5s = AnimalHusbandry5.search(params[:search],compare)
          a = AnimalHusbandry5.query(@AnimalHusbandry5s,params[:year],rain_fall_type,views,compare,ji)
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
    AnimalHusbandry5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /animal_husbandry5s/1/edit
  def edit
  end

  # POST /animal_husbandry5s
  def create
    @animal_husbandry5 = AnimalHusbandry5.new(animal_husbandry5_params)

    if @animal_husbandry5.save
      redirect_to @animal_husbandry5, notice: 'Animal husbandry5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /animal_husbandry5s/1
  def update
    if @animal_husbandry5.update(animal_husbandry5_params)
      redirect_to @animal_husbandry5, notice: 'Animal husbandry5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /animal_husbandry5s/1
  def destroy
    @animal_husbandry5.destroy
    redirect_to animal_husbandry5s_url, notice: 'Animal husbandry5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_husbandry5
      @animal_husbandry5 = AnimalHusbandry5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_husbandry5_params
      params.require(:animal_husbandry5).permit(:Districts, :Fish_Production_2014, :Fish_Seeds_2014, :Fish_Production_2015, :Fish_Seeds_2015, :Fish_Production_2016, :Fish_Seeds_2016)
    end
end

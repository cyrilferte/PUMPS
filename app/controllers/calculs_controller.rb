class CalculsController < ApplicationController
  def new
    @calculx = Calcul.new
  end
  def create
    @calculx = Calcul.new(calcul_params)
   if @calculx.save
    redirect_to calcul_path(@calculx)
   else
     render :new
   end
  end
   def show
    @calcul= Calcul.find(params[:id])
     @reportx = Report.new

  end

     def index
    @calculs = Calcul.all
    end




  private

  def calcul_params
    params.require(:calcul).permit(:techno, :para1, :para2, :mail, :para3, :para4)
  end

end



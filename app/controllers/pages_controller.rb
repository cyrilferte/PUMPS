class PagesController < ApplicationController
 def home
    @calculx = Calcul.new

  end
   def create
    @calculx = Calcul.new(calcul_params)
   if @calculx.save
    redirect_to calculs_path(@calculx)
   else
     render :new
   end
  end

   private

  def calcul_params
    params.require(:calcul).permit(:techno, :para1, :para2, :mail)
  end
end

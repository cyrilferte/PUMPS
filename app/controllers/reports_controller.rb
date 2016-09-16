class ReportsController < ApplicationController
  def new
    @report = Report.new
  end
  def create
@report = Report.new(report_params)
   if @report.save
    redirect_to "/reports/#{@report.id}.pdf"
   else
     render :new
   end
  end
   def show
    @report= Report.find(params[:id])
    @result= Calcul.find(@report.calcul_id)
      respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show.pdf.erb"
                # Excluding ".pdf" extension.
      end
    end
  end





  private

  def report_params
    params.require(:report).permit(:calcul_id)
  end

end



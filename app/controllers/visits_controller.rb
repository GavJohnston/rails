class VisitsController < ApplicationController
http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy 

def index 
  @visits = Visit.all.decorate
end


 def show2
 @visit = Visit.find(params[:customer_id]).decorate
 end

def show
    @visit = Visit.find(params[:customer_id]).decorate
    respond_to do |format|
     format.html
     format.pdf do
        pdf = PrescriptionPdf.new(@visit)
        send_data pdf.render, filename: "Prescription_#{@visit.visitprescription}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
        end 
    end
end


 def create
 @customer = Customer.find(params[:customer_id])
 @visit = @customer.visits.create(visit_params)
 redirect_to customer_path(@customer)
 end
 
 
 
 def destroy
 @customer = Customer.find(params[:customer_id])
 @visit = @customer.visits.find(params[:id])
 @visit.destroy
 redirect_to customer_path(@customer)
 end 

 private
 def visit_params
 params.require(:visit).permit(:visitdate, :visitnextdate, :visitissue, :visitresolution, :visitimage, :visitdoctor, :visitprescription, :image)
 end
end 

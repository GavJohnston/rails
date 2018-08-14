class CustomersController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except:
[:index, :show] 
 def index
  
 @customers = Customer.all.decorate
 @customers = Customer.where(["customeraddress ILIKE ? OR customeremail ILIKE ? OR customernumber ILIKE ? OR customerfirst_name ILIKE ?","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"]).decorate

 end 
 
 def show

 @customer = Customer.find(params[:id]).decorate
 end 

def new
 @customer = Customer.new
 @customers = Customer.all.decorate
end

def edit
 @customer = Customer.find(params[:id]) 
end

def create
 @customer = Customer.new(customer_params)

if @customer.save
 redirect_to @customer
 else
 render 'new'
end 
end

def update
 @customer = Customer.find(params[:id])

 if @customer.update(customer_params)
 redirect_to @customer
 else
 render 'edit'
 end
end 

def destroy
 @customer = Customer.find(params[:id])
 @customer.destroy

 redirect_to customers_path
end

private
 def customer_params
 params.require(:customer).permit(:customerfirst_name, :customerlast_name, :customeremail, :customernumber, :customeraddress, :customerdob)
 end 
end

 class ContactsController < ApplicationController

	def new

		@contact = Contact.new
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def index
		@contact = Contact.all
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update
		@contact=Contact.find(params[:id])
 		image1=params[:contact][:photo].original_filename
 		@contact.photo = image1
   		if @contact.update(contact_params)
			respond_to do |format|
				format.html { redirect_to @contact , notice: 'Contact updation Success' }
			end
		else
			render 'edit'
		end
	end

	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
		redirect_to contacts_path
	end

	def male
		@contact = Contact.where(:avatar => 'Male')
		render "index"

	end

	def female
		@contact = Contact.where(:avatar => 'Female')
		render "index"
	end

	def create
	  	@contact = Contact.create(contact_params)
		image1=params[:contact][:photo].original_filename
		@contact.photo = image1
		if @contact.save   
		    respond_to do |format|
		    	format.html { redirect_to @contact , notice: 'Done, Contact Added' }
		    end
		else
		    render 'new'
		end
	end
	private
		def contact_params
			image1=params[:contact][:photo].original_filename
	    	directory = "public/data"
 	 		path = File.join(directory, image1) 
			File.open(path, "wb") { |f| f.write(params[:contact][:photo].read) }
			params.require(:contact).permit(:firstname, :lastname, :mno, :emailid, :add, :avatar)
		end
end
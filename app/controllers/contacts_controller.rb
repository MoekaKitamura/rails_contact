class ContactsController < ApplicationController
  def new
    @contact = Contact.new(params.require(:contact).permit(:name,:email,:content))
  end

  def create
      if @contact.save
        redirect_to new_contact_path
      else 
        render :new
      end
  end
end

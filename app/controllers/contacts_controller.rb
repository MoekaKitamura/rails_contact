class ContactsController < ApplicationController
  def new
    @contact = Contact.new(contact_params)
  end

  def create
    if @contact.save
      redirect_to new_contact_path
    else 
      render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
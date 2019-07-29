class ContactsController < ApplicationController

  def create
    @contact = Contact.create(contact_params)
    render json: @contact
  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email, :phonenumber, :contactreason)
  end

end

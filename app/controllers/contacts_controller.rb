class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render json: @contacts
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: { result: "success" }
    else
      render json: {result: "failure"}
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:origin, :occupation, :first_name)
  end


end

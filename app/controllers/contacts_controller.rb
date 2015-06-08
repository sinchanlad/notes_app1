class ContactsController < ApplicationController
  def index
    @contacts = current_user.contacts
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    @contact.name = params[:name]
    @contact.phone_number = params[:phone_number]
    @contact.user_id = current_user.id
    @contact.email = params[:email]

    if @contact.save
      redirect_to "/contacts", :notice => "Contact created successfully."
    else
      render 'new'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.name = params[:name]
    @contact.phone_number = params[:phone_number]
    @contact.user_id = current_user.id
    @contact.email = params[:email]

    if @contact.save
      redirect_to "/contacts", :notice => "Contact updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    @contact.destroy

    redirect_to "/contacts", :notice => "Contact deleted."
  end
end

class ContactController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:new, :create]

  # GET /contacts
  # GET /contacts.json
  def index
    @contact = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # Contact /contacts
  # Contact /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html do
          flash[:success] = 'You have successfully submitted your information.'
          redirect_to root_path
        end
        # format.json { render :show, status: :created, location: @contact }
      else
        format.html do
          flash[:error] = 'Oops! Something went wrong.'
          redirect_to new_contact_path
        end
        # format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_prams_update)
        format.html do
          flash[:success] = 'Contact info was successfully updated.'
          redirect_to contacts_path
        end
        # format.json { render :show, status: :ok, location: @contact }
      else
        format.html do
          flash[:error] = "It didn't update.  Try again."
          render :edit
        end
        # format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html do
        flash[:success] = "Contact was successfully deleted."
        redirect_to contacts_path
      end
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:subscriber).permit(:name, :email, :organization, :comment)
    end

    def contact_prams_update
    	params.require(:subscriber).permit(:name, :email, :organization, :comment, :status, :note)
    end
end

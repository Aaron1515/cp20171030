class SubscribersController < ApplicationController

  before_action :set_subscriber, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:new, :create]


  # GET /subscribers
  # GET /subscribers.json
  def index
    @subscribers = Subscriber.all
  end

  # GET /subscribers/1
  # GET /subscribers/1.json
  def show
  end

  # GET /subscribers/new
  def new
    @subscriber = Subscriber.new
  end

  # GET /subscribers/1/edit
  def edit
  end

  # Subscriber /subscribers
  # Subscriber /subscribers.json
  def create
    @subscriber = Subscriber.new(subscriber_params)

    respond_to do |format|
      if @subscriber.save
        format.html do
          flash[:success] = 'You have successfully subscribed.'
          redirect_to root_path
        end
        # format.json { render :show, status: :created, location: @subscriber }
      else
        format.html do
          flash[:error] = 'Oops! Something went wrong.'
          redirect_to root_path
        end
        # format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscribers/1
  # PATCH/PUT /subscribers/1.json
  def update
    respond_to do |format|
      if @subscriber.update(subscriber_update_params)
        format.html do
          flash[:success] = 'Subscriber was successfully updated.'
          redirect_to subscribers_path
        end
        # format.json { render :show, status: :ok, location: @subscriber }
      else
        format.html do
          flash[:error] = "It didn't update.  Try again."
          render :edit
        end
        # format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscribers/1
  # DELETE /subscribers/1.json
  def destroy
    @subscriber.destroy
    respond_to do |format|
      format.html do
        flash[:success] = "Subscriber was successfully deleted."
        redirect_to subscribers_path
      end
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscriber_params
      params.require(:subscriber).permit(:name, :email)
    end

    def subscriber_update_params
      params.require(:subscriber).permit(:name, :email, :active)
    end

end

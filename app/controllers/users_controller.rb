class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :load_user, only: :create
  load_and_authorize_resource

  # GET /hospitals
  # GET /hospitals.json
  def index
    @users = User.all
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
  end

  # GET /hospitals/new
  def new
    @user = User.new
    @hospitals = Hospital.all
  end

  # GET /hospitals/1/edit
  def edit
    @hospitals = Hospital.all
  end

  # POST /hospitals
  # POST /hospitals.json
  def create
    @hospitals = Hospital.all

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospitals/1
  # PATCH/PUT /hospitals/1.json
  def update
    @hospitals = Hospital.all
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Hospital was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitals/1
  # DELETE /hospitals/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to hospitals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      begin 
        @user = User.find(params[:id]) 
      rescue
         @user = current_user
      end
    end

    def load_user
      @user = User.new(user_params)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin, :hospital_ids => [])
    end
end

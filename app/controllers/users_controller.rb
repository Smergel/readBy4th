class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index

    # Approval methods -- not planning to have it working for demo.
    # if params[:approved] == "false"
    #   @users = User.find_all_by_approved(false)
    # else
    #   @users = User.all
    # end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def new_parent
    @user = User.new
  end
  
  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  # def create
  #   @user = User.new(user_params)
  #   puts @user.inspect
  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to @user, notice: 'User was successfully created.' }
  #       format.json { render :show, status: :created, location: @user }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def select_partner
    @partners = Partner.all
  end

  def load_partner
    # @partner = params[:partner]
    # puts @partner  
    redirect_to '/users/sign_up/'
  end

  # def load_partner
  #   @partner = params[:partner]
  #   puts @partner  
  #   redirect_to new_user_registration
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user  
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:partner_id, :parent_id, :email, :password)
    end
end

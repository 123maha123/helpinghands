class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        session[:user_name]=@user.username
        session[:user_id]=@user.id
        session[:user_type]=@user.usertype
        
        if @user.usertype=="admin" || @user.usertype=="donor"
          format.html { redirect_to :controller=>"donors",:action=>"new",:user_id=>@user.id,:donortype=>@user.usertype, notice: 'User was successfully created.' }
        elsif @user.usertype=="charity"
          format.html { redirect_to :controller=>"charities",:action=>"new",:user_id=>@user.id, notice: 'User was successfully created.' }
        end
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
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
    session[:user_id] = nil
    session[:user_name]=nil
    session[:user_type]=nil
    session[:charity_id]=nil
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def login
    user=User.find_by(username:params[:username])
    if user && user.authenticate(params[:password])
      session[:user_name]=user.username
      session[:user_id]=user.id
      session[:user_type]=user.usertype
      if user.usertype=="charity"
        charity=Charity.find_by user_id:user.id
        session[:id]=charity.id
        redirect_to charity_wishlists_path
      else
        render 'donors/trial'
      end
    else
      render 'donors/welcome'
    end
  end
  
  def logout
    session[:user_id] = nil
    session[:user_name]=nil
    session[:user_type]=nil
    session[:charity_id]=nil
    render "donors/welcome"
  end
  
  def settings
    @user=User.find(session[:user_id])    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :email, :usertype)
    end
end
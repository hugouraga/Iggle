class NormalUsersController < ApplicationController
  before_action :set_normal_user, only: [:show, :edit, :update, :destroy]

  # GET /normal_users
  # GET /normal_users.json
  def index
    @normal_users = NormalUser.all
  end

  # GET /normal_users/1
  # GET /normal_users/1.json
  def show
  end

  # GET /normal_users/new
  def new
    @normal_user = NormalUser.new
  end

  # GET /normal_users/1/edit
  def edit
  end

  # POST /normal_users
  # POST /normal_users.json
  def create
    @normal_user = NormalUser.new(normal_user_params)


      if @normal_user.save
        flash[:success] = 'Usuário cadastrado com sucesso.'
        redirect_to root_path
      else
        render :new

      end
    end
  end

  # PATCH/PUT /normal_users/1
  # PATCH/PUT /normal_users/1.json
  def update
    respond_to do |format|
      if @normal_user.update(normal_user_params)
        format.html { redirect_to @normal_user, notice: 'Normal user was successfully updated.' }
        format.json { render :show, status: :ok, location: @normal_user }
      else
        format.html { render :edit }
        format.json { render json: @normal_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /normal_users/1
  # DELETE /normal_users/1.json
  def destroy
    @normal_user.destroy
    respond_to do |format|
      format.html { redirect_to normal_users_url, notice: 'Normal user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_normal_user
      @normal_user = NormalUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def normal_user_params
      params.require(:normal_user).permit(:name, :email, :phone, :password, :password_confirmation , :avatar)
    end

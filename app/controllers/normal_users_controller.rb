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
    require_logged_in_normal_user

    @normal_user = NormalUser.find(params[:id])

    if current_normal_user.id != @normal_user.id
      redirect_to current_normal_user
    end
  end

  # GET /normal_users/new
  def new
    @normal_user = NormalUser.new
  end

  # GET /normal_users/1/edit
  def edit
    @normal_user = current_normal_user
  end

  def update
    @normal_user = current_normal_user
    if @normal_user.update(normal_user_params)
      flash.now[:success] = 'Informações alteradas com sucesso!'
      render :edit
    else
      render :edit
    end
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

  # DELETE /normal_users/1
  # DELETE /normal_users/1.json
  def destroy
    @normal_user.destroy
    respond_to do |format|
      format.html { redirect_to normal_users_url, notice: 'Usuário excluído com sucesso.' }
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

class ProfessionalUsersController < ApplicationController
  before_action :set_professional_user, only: [:show, :edit, :update, :destroy]

  # GET /professional_users
  # GET /professional_users.json
  def index
    @professional_users = ProfessionalUser.all
  end

  # GET /professional_users/1
  # GET /professional_users/1.json
  def show
  end

  # GET /professional_users/new
  def new
    @professional_user = ProfessionalUser.new
  end

  # GET /professional_users/1/edit
  def edit
  end

  # POST /professional_users
  # POST /professional_users.json
  def create
    @professional_user = ProfessionalUser.new(professional_user_params)

    
      if @professional_user.save
        flash[:success] = 'Usuário cadastrado com sucesso.'        
        redirect_to root_path
      else
        render :new
        
      end
    end
  end

  # PATCH/PUT /professional_users/1
  # PATCH/PUT /professional_users/1.json
  def update
    respond_to do |format|
      if @professional_user.update(professional_user_params)
        format.html { redirect_to @professional_user, notice: 'Professional user was successfully updated.' }
        format.json { render :show, status: :ok, location: @professional_user }
      else
        format.html { render :edit }
        format.json { render json: @professional_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_users/1
  # DELETE /professional_users/1.json
  def destroy
    @professional_user.destroy
    respond_to do |format|
      format.html { redirect_to professional_users_url, notice: 'Professional user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_user
      @professional_user = ProfessionalUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professional_user_params
      params.require(:professional_user).permit(:name, :email, :phone, :profession, :document, :description, :facebook, :instagram, :password, :password_confirmation )
    end


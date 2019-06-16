class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in_professional_user, only: [:index, :show, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    @services = current_professional_user.services
  end

  def professional_services
    #@services = Service.all
    @services = Service.where(professional_user_id: params[:id])
  end

  def services_name
    if params[:search].nil? || params[:search] == ""
      @services = nil
    else
      @services = Service.where("service ILIKE ?", "%#{params[:search]}%")
      @professional = Service.joins(:professional_user).where(professional_users: params[:id])
      if params[:search].present?
        if @services.empty?
          flash.now[:danger] = 'Serviço não encontrado!'
        end
      end
    end
  end

  def addresses_names
    @services = Service.joins(:address).where("city ILIKE ?", "#{params[:search]}")
    @professional = Service.joins(:professional_user).where(professional_users: params[:id])
    if params[:search].present?
      if @services.empty?
        flash.now[:danger] = 'Não serviços cadastrados com esta cidade!'
      end
    end
  end


  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = current_professional_user.services.build(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to meus_servicos_path }
        flash[:success] = 'Serviço adicionado com sucesso!'
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    @service = current_professional_user.services.find(params[:id])
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to meus_servicos_path }
        flash[:success] = 'Serviço atualizado com sucesso!'
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service = current_professional_user.services.find(params[:id])
    @service.destroy
    redirect_to services_url
    flash[:success] = 'Serviço excluído com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit( :service, :description, :value, :duration, :email, :address_id )
    end
end

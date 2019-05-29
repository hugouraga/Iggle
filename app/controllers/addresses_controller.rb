class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in_professional_user

  # GET /addresses
  # GET /addresses.json
  def index
    @addresses = current_professional_user.addresses

  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
  end

  # GET /addresses/new
  def new
    @address = Address.new
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = current_professional_user.addresses.build(address_params)


    respond_to do |format|
      if @address.save
        format.html { redirect_to addresses_url }
        flash[:success] = 'Endereço adicionado com sucesso!'
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    @address = current_professional_user.addresses.find(params[:id])

    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to @address, notice: '' }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address = current_professional_user.addresses.find(params[:id])
    @address.destroy
    respond_to do |format|
      format.html { redirect_to addresses_url }
      flash[:success] = 'Endereço excluído com sucesso!'
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:name, :number, :description, :postal_code, :district, :city, :state)
    end
end

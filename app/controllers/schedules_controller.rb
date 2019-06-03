class SchedulesController < ApplicationController
	before_action :require_logged_in_professional_user
	before_action :set_schedule, only: [:show, :edit, :update, :destroy]

	def index
	  @schedules = Schedule.all
	end

	def show
	end

	def new
		@schedule = Schedule.new
	end

	def edit
	end


	def create
		@schedule = Schedule.new(schedule_params)

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to addresses_url }
        flash[:success] = 'Horário adicionado com sucesso!'
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
	end

	def edit
  end

	def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to meus_enderecos_path }
        flash[:success] = 'Horário atualizado com sucesso!'
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to addresses_url }
      flash[:success] = 'Horário excluído com sucesso!'
      format.json { head :no_content }
    end
	end

	private
	  def set_schedule
		@schedule = Schedule.find(params[:id])
	  end

	  def schedule_params
			params.require(:schedule).permit(:day, :morning, :evening, :night, :address_id)
	  end
end

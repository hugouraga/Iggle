class SchedulesController < ApplicationController
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
	end

	def update
	end

	def destroy
	end

	private
	  def set_schedule
		@schedule = Schedule.find(params[:id])
	  end

	  def schedule_params
		params.require(:schedule).permit(:day, :hour, :service_id)
	  end
end

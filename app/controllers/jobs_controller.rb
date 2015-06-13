class JobsController < ApplicationController
  def index
  end

  def create
    @job = Job.new(job_params)

    @job.save
    redirect_to @job
  end

  def new
  end

  def show
    @job = Job.find(params[:id])
  end

  private
    def job_params
      params.require(:job).permit(:title, :start_date, :end_date, :location, :event_type, :requirements, :description)
    end
end

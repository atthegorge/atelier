class JobsController < ApplicationController
  def index
    @jobs = Job.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Job.create(job_params)
    binding.pry
  end

  private
  def job_params
    params.permit(:title, :introduction, :description, :skill)
  end

end

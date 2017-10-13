class JobsController < ApplicationController
  def index
    @jobs = Job.order("created_at DESC")
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

class JobsController < ApplicationController
  def index
    @jobs = Job.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def show
    @jobs = Job.find(params[:id])
  end

  def create
    Job.create(title: job_params[:title], introduction: job_params[:introduction], description: job_params[:description], skill: job_params[:skill])
  end

  private
  def job_params
    params.permit(:title, :introduction, :description, :skill)
  end

end

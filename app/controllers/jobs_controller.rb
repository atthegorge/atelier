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
    Job.create(title: job_params[:title], introduction: job_params[:introduction], description: job_params[:description], skill: job_params[:skill], member_id: current_member.id)
    redirect_to controller: :jobs, action: :index
  end

  def destroy
    job = Job.find(params[:id])
    # 下記は中間テーブル設計時に有効になる
    if job.user_id == current_user.id
      job.destroy
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    job = Job.find(params[:id])
    if job.user_id == current_member.id
      job.update(job_params)
    end
  end

  private
  def job_params
    params.permit(:title, :introduction, :description, :skill)
  end

end

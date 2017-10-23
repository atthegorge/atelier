class JobsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @jobs = Job.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def show
    @jobs = Job.find(params[:id])
  end

  def create
    Job.create(image: job_params[:image], title: job_params[:title], introduction: job_params[:introduction], description: job_params[:description], skill: job_params[:skill], member_id: current_member.id)
    redirect_to controller: :jobs, action: :index
  end

  def destroy
    job = Job.find(params[:id])
    # 下記は中間テーブル設計時に有効になる
    if job.member_id == current_member.id
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
    params.permit(:image, :title, :introduction, :description, :skill, :skill_list, :option_list)
  end

  def move_to_index
    redirect_to action: :index unless member_signed_in?
  end

end

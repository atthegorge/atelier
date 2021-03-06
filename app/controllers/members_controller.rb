class MembersController < ApplicationController

  # before_action :move_to_index, except: :index

  def show
    # orgは自分の募集のみ取得して表示
    @members = Member.find(params[:id])
    # binding.pry
    @jobs_org = @members.job.order("created_at DESC").page(params[:page]).per(5)
    # userは自分が応募した募集を取得して表示
    @jobs_user = current_member.jobs.order("created_at DESC").page(params[:page]).per(5)

  end

  # def move_to_index
  #   redirect_to action: :index unless member_signed_in?
  # end
end

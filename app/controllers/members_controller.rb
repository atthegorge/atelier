class MembersController < ApplicationController

  before_action :move_to_index, except: :index

  def show
    # このユーザーにひもづく募集のみ表示する必要がある！
    @jobs = Job.order("created_at DESC").page(params[:page]).per(5)
    @members = Member.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless member_signed_in?
  end
end

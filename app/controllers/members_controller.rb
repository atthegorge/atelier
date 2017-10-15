class MembersController < ApplicationController

  def show
    # このユーザーにひもづく募集のみ表示する必要がある！
    @jobs = Job.order("created_at DESC").page(params[:page]).per(5)
    @members = Member.find(params[:id])
  end
end

class JobMembersController < ApplicationController

  def create
    JobMember.create(job_id: params[:job_id], member_id: current_member.id)
    redirect_to root_path

  end

end

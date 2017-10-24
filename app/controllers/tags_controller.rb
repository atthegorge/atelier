class TagsController < ApplicationController

  def index
    @tags = Job.all_tags
  end

  def show
    @jobs = Job.tagged_with(params[:id]).page(params[:page]).newest
  end

end

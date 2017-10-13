Rails.application.routes.draw do
  root 'jobs#index'
  get   'jobs'      =>   'jobs#index'
  get   'jobs/new'  =>   'jobs#new'
  post  'jobs'      =>   'jobs#create'
end

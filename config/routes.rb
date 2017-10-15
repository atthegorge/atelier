Rails.application.routes.draw do
  devise_for :members
  root 'jobs#index'
  get   'jobs'      =>   'jobs#index'
  get   'jobs/new'  =>   'jobs#new'
  post  'jobs'      =>   'jobs#create'
  get   'jobs/:id' =>   'jobs#show'
end

Rails.application.routes.draw do
  devise_for :members
  root 'jobs#index'
  resources :jobs
  # get   'jobs'      =>   'jobs#index'
  # get   'jobs/new'  =>   'jobs#new'
  # post  'jobs'      =>   'jobs#create'
  # get   'jobs/:id'  =>   'jobs#show'
  get   'members/:id', to: 'members#show',as: 'members'
  # delete  'jobs/:id'  => 'jobs#destroy'
  # get   'jobs/:id/edit'  => 'jobs#edit'
  # patch   'jobs/:id'  => 'jobs#update'
  get    'tags/index' =>  'tags#index'
  get    'tags/:id', to:  'tags#show', as: 'tags'
  post    'job_members' =>  'job_members#create'
end

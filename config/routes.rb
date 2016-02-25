require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do

  resources :configurations
  resources :projects
  resources :commits
  resources :rule_types
  resources :rules

  get 'dashboard/index'
  get 'configurations/index'
  get 'projects/index'
  get 'commits/index'
  get 'rule_types/index'
  get 'rules/index'

  mount Sidekiq::Web => '/sidekiq'

  root 'dashboard#index'
end
